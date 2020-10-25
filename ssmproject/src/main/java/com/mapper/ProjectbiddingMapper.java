package com.mapper;

import com.domain.Projectbidding;
import org.apache.ibatis.annotations.Param;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

public interface ProjectbiddingMapper extends Mapper<Projectbidding> {

    List<Projectbidding> selectAll2(@Param("projectbidding") Projectbidding projectbidding);

    List<Projectbidding> selectAll3(@Param("projectbidding") Projectbidding projectbidding);
}