package com.example.service;

import com.example.entity.Description;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.mapper.DescriptionMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class DescriptionService extends ServiceImpl<DescriptionMapper, Description> {

    @Resource
    private DescriptionMapper descriptionMapper;

}
