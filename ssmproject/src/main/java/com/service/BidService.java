package com.service;

import com.domain.Bid;

import java.util.List;

public interface BidService{


    int deleteByPrimaryKey(Integer id);

    int insert(Bid record);

    int insertSelective(Bid record);

    Bid selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Bid record);

    int updateByPrimaryKey(Bid record);

    /**
     * 根据招标项目的id查询参与这个项目的投标的信息
     * @param projectbiddingid
     * @return
     */
    List<Bid> selectByProjectbiddingid(int projectbiddingid);

}
