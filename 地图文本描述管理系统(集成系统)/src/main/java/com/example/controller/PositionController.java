package com.example.controller;

import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.io.FileUtil;
import cn.hutool.core.io.IoUtil;
import cn.hutool.poi.excel.ExcelUtil;
import cn.hutool.poi.excel.ExcelWriter;
import com.example.common.Result;
import com.example.entity.Position;
import com.example.service.PositionService;
import com.example.entity.User;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.springframework.web.bind.annotation.*;
import com.example.exception.CustomException;
import cn.hutool.core.util.StrUtil;

import javax.annotation.Resource;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.*;

@RestController
@RequestMapping("/api/position")
public class PositionController {
    @Resource
    private PositionService positionService;
    @Resource
    private HttpServletRequest request;

    public User getUser() {
        User user = (User) request.getSession().getAttribute("user");
        if (user == null) {
            throw new CustomException("-1", "请登录");
        }
        return user;
    }

    @PostMapping
    public Result<?> save(@RequestBody Position position) {
        return Result.success(positionService.save(position));
    }

    @PutMapping
    public Result<?> update(@RequestBody Position position) {
        return Result.success(positionService.updateById(position));
    }

    @DeleteMapping("/{id}")
    public Result<?> delete(@PathVariable Long id) {
        positionService.removeById(id);
        return Result.success();
    }

    @GetMapping("/{id}")
    public Result<?> findById(@PathVariable Long id) {
        return Result.success(positionService.getById(id));
    }

    @GetMapping
    public Result<?> findAll() {
        return Result.success(positionService.list());
    }

    // 分页查找
    @GetMapping("/page")
    public Result<?> findPage(@RequestParam(required = false, defaultValue = "") String name,
                              @RequestParam(required = false, defaultValue = "1") Integer pageNum,
                              @RequestParam(required = false, defaultValue = "10") Integer pageSize) {
        LambdaQueryWrapper<Position> query = Wrappers.<Position>lambdaQuery().orderByDesc(Position::getId);
        if (StrUtil.isNotBlank(name)) {
            query.like(Position::getName, name);
        }
        return Result.success(positionService.page(new Page<>(pageNum, pageSize), query));
    }

    // 通过中心点分页查找
    @GetMapping("/center")
    public Result<?> findPageByCenter(@RequestParam Double lng, @RequestParam Double lat,
                                      @RequestParam(required = false, defaultValue = "1") Integer pageNum,
                                      @RequestParam(required = false, defaultValue = "10") Integer pageSize) {
        LambdaQueryWrapper<Position> query = Wrappers.<Position>lambdaQuery().orderByDesc(Position::getId);
        query.eq(Position::getCenterLng, lng);
        query.eq(Position::getCenterLat, lat);
        return Result.success(positionService.page(new Page<>(pageNum, pageSize), query));
    }

    // 通过地点的id的字符串来分页查找地点
    @GetMapping("/idstr")
    public Result<?> findPageByCenter(@RequestParam(required = false, defaultValue = "") String id_str,
                                      @RequestParam(required = false, defaultValue = "1") Integer pageNum,
                                      @RequestParam(required = false, defaultValue = "10") Integer pageSize) {
        LambdaQueryWrapper<Position> query = Wrappers.<Position>lambdaQuery().orderByDesc(Position::getId);
        int pid = Integer.parseInt(id_str);
        query.eq(Position::getId, pid);
        return Result.success(positionService.page(new Page<>(pageNum, pageSize), query));
    }

    @GetMapping("/export")
    public void export(HttpServletResponse response) throws IOException {

        List<Map<String, Object>> list = CollUtil.newArrayList();

        List<Position> all = positionService.list();
        for (Position obj : all) {
            Map<String, Object> row = new LinkedHashMap<>();
            row.put("", obj.getId());
            row.put("序号", obj.getName());
            row.put("左上角经度", obj.getSwLng());
            row.put("左上角纬度", obj.getSwLat());
            row.put("右下角经度", obj.getNeLng());
            row.put("右下角纬度", obj.getNeLat());
            row.put("中心点经度", obj.getCenterLng());
            row.put("中心点纬度", obj.getCenterLat());

            list.add(row);
        }

        // 2. 写excel
        ExcelWriter writer = ExcelUtil.getWriter(true);
        writer.write(list, true);

        response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;charset=utf-8");
        String fileName = URLEncoder.encode("地点信息信息", "UTF-8");
        response.setHeader("Content-Disposition", "attachment;filename=" + fileName + ".xlsx");

        ServletOutputStream out = response.getOutputStream();
        writer.flush(out, true);
        writer.close();
        IoUtil.close(System.out);
    }

    @GetMapping("/upload/{fileId}")
    public Result<?> upload(@PathVariable String fileId) {
        String basePath = System.getProperty("user.dir") + "/src/main/resources/static/file/";
        List<String> fileNames = FileUtil.listFileNames(basePath);
        String file = fileNames.stream().filter(name -> name.contains(fileId)).findAny().orElse("");
        List<List<Object>> lists = ExcelUtil.getReader(basePath + file).read(1);
        List<Position> saveList = new ArrayList<>();
        for (List<Object> row : lists) {
            Position obj = new Position();
            obj.setName((String) row.get(1));
            obj.setSwLng(Double.valueOf((String) row.get(2)));
            obj.setSwLat(Double.valueOf((String) row.get(3)));
            obj.setNeLng(Double.valueOf((String) row.get(4)));
            obj.setNeLat(Double.valueOf((String) row.get(5)));
            obj.setCenterLng(Double.valueOf((String) row.get(6)));
            obj.setCenterLat(Double.valueOf((String) row.get(7)));

            saveList.add(obj);
        }
        positionService.saveBatch(saveList);
        return Result.success();
    }

}
