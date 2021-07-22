package com.example.controller;

import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.date.DateUtil;
import cn.hutool.core.io.FileUtil;
import cn.hutool.core.io.IoUtil;
import cn.hutool.poi.excel.ExcelUtil;
import cn.hutool.poi.excel.ExcelWriter;
import com.example.common.Result;
import com.example.entity.Description;
import com.example.service.DescriptionService;
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
import java.math.BigDecimal;

@RestController
@RequestMapping("/api/description")
public class DescriptionController {
    @Resource
    private DescriptionService descriptionService;
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
    public Result<?> save(@RequestBody Description description) {
        return Result.success(descriptionService.save(description));
    }

    @PutMapping
    public Result<?> update(@RequestBody Description description) {
        return Result.success(descriptionService.updateById(description));
    }

    @DeleteMapping("/{id}")
    public Result<?> delete(@PathVariable Long id) {
        descriptionService.removeById(id);
        return Result.success();
    }

    @GetMapping("/{id}")
    public Result<?> findById(@PathVariable Long id) {
        return Result.success(descriptionService.getById(id));
    }

    @GetMapping
    public Result<?> findAll() {
        return Result.success(descriptionService.list());
    }

    // 分页查找
    @GetMapping("/page")
    public Result<?> findPageByName(@RequestParam(required = false, defaultValue = "") String name,
                                    @RequestParam(required = false, defaultValue = "1") Integer pageNum,
                                    @RequestParam(required = false, defaultValue = "10") Integer pageSize) {
        LambdaQueryWrapper<Description> query = Wrappers.<Description>lambdaQuery().orderByDesc(Description::getId);
        if (StrUtil.isNotBlank(name)) {
            query.like(Description::getName, name);
        }
        return Result.success(descriptionService.page(new Page<>(pageNum, pageSize), query));
    }

    // 通过pid分页查找
    @GetMapping("/page/pid")
    public Result<?> findPageByPid(@RequestParam Long pid,
                              @RequestParam(required = false, defaultValue = "1") Integer pageNum,
                              @RequestParam(required = false, defaultValue = "10") Integer pageSize) {
        LambdaQueryWrapper<Description> query = Wrappers.<Description>lambdaQuery().orderByDesc(Description::getId);
        query.eq(Description::getPid, pid);
        return Result.success(descriptionService.page(new Page<>(pageNum, pageSize), query));
    }

    // 通过uid分页查找
    @GetMapping("/page/uid")
    public Result<?> findPageByUid(@RequestParam Long uid,
                                   @RequestParam(required = false, defaultValue = "1") Integer pageNum,
                                   @RequestParam(required = false, defaultValue = "10") Integer pageSize) {
        LambdaQueryWrapper<Description> query = Wrappers.<Description>lambdaQuery().orderByDesc(Description::getId);
        query.eq(Description::getUid, uid);
        return Result.success(descriptionService.page(new Page<>(pageNum, pageSize), query));
    }

    @GetMapping("/export")
    public void export(HttpServletResponse response) throws IOException {

        List<Map<String, Object>> list = CollUtil.newArrayList();

        List<Description> all = descriptionService.list();
        for (Description obj : all) {
            Map<String, Object> row = new LinkedHashMap<>();
            row.put("描述的id", obj.getId());
            row.put("提交描述的用户的id", obj.getUid());
            row.put("地点的id", obj.getPid());
            row.put("描述的内容", obj.getName());

            list.add(row);
        }

        // 2. 写excel
        ExcelWriter writer = ExcelUtil.getWriter(true);
        writer.write(list, true);

        response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;charset=utf-8");
        String fileName = URLEncoder.encode("描述信息信息", "UTF-8");
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
        List<Description> saveList = new ArrayList<>();
        for (List<Object> row : lists) {
            Description obj = new Description();
            obj.setUid(Integer.valueOf((String) row.get(1)));
            obj.setPid(Integer.valueOf((String) row.get(2)));
            obj.setName((String) row.get(3));

            saveList.add(obj);
        }
        descriptionService.saveBatch(saveList);
        return Result.success();
    }

}
