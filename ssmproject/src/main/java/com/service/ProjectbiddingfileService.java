package com.service;

import com.domain.Projectbiddingfile;
public interface ProjectbiddingfileService{


    int deleteByPrimaryKey(Integer id);

    int insert(Projectbiddingfile record);

    int insertSelective(Projectbiddingfile record);

    Projectbiddingfile selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Projectbiddingfile record);

    int updateByPrimaryKey(Projectbiddingfile record);

}
