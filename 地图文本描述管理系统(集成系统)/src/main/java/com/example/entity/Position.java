package com.example.entity;

import lombok.Data;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.baomidou.mybatisplus.annotation.TableId;


@Data
@TableName("position")
public class Position extends Model<Position> {
    /**
      * 主键
      */
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
      * 序号 
      */
    private String name;

    /**
      * 西南角经度
      */
    private Double swLng;

    /**
      * 西南角纬度
      */
    private Double swLat;

    /**
      * 东北角经度
      */
    private Double neLng;

    /**
      * 东北角纬度
      */
    private Double neLat;

    /**
      * 中心点经度 
      */
    private Double centerLng;

    /**
      * 中心点纬度 
      */
    private Double centerLat;

}