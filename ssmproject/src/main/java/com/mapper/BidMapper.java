package com.mapper;

import com.domain.Bid;
import org.apache.ibatis.annotations.Param;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

public interface BidMapper extends Mapper<Bid> {
    /**
     * 根据招标项目的id查询参与这个项目的投标的信息
     *
     * @param projectbiddingid
     * @return
     */
    List<Bid> selectByProjectbiddingid(@Param("projectbiddingid") int projectbiddingid);
}