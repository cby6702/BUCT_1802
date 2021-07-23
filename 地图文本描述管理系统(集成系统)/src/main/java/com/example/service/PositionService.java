package com.example.service;

import com.example.entity.Position;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.mapper.PositionMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class PositionService extends ServiceImpl<PositionMapper, Position> {

    @Resource
    private PositionMapper positionMapper;

}
