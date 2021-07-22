package com.example.entity;

import lombok.Data;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.baomidou.mybatisplus.annotation.TableId;


@Data
@TableName("description")
public class Description extends Model<Description> {
    /**
      * 主键
      */
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
      * 提交描述的用户的id 
      */
    private Integer uid;

    /**
      * 地点的id 
      */
    private Integer pid;

    /**
      * 描述的内容 
      */
    private String name;

}