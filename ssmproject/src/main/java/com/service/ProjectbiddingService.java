package com.service;

import com.domain.Projectbidding;

import java.util.List;

public interface ProjectbiddingService{


    int deleteByPrimaryKey(Integer id);

    int insert(Projectbidding record);

    int insertSelective(Projectbidding record);

    Projectbidding selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Projectbidding record);

    int updateByPrimaryKey(Projectbidding record);

    List<Projectbidding> selectAll(Projectbidding projectbidding);

    List<Projectbidding> selectAll2(Projectbidding projectbidding);

    List<Projectbidding> selectAll3(Projectbidding projectbidding);
}
