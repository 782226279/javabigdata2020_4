package com.service;

import com.domain.Bid;
import com.domain.Bidfile;
public interface BidfileService{

    int deleteByPrimaryKey(Integer id);

    int insert(Bidfile record);

    int insertSelective(Bidfile record);

    Bidfile selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Bidfile record);

    int updateByPrimaryKey(Bidfile record);

}
