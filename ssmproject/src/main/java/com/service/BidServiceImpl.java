package com.service;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import com.domain.Bid;
import com.mapper.BidMapper;
import com.service.BidService;

import java.util.List;

@Service
public class BidServiceImpl implements BidService{

    @Resource
    private BidMapper bidMapper;

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return bidMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Bid record) {
        return bidMapper.insert(record);
    }

    @Override
    public int insertSelective(Bid record) {
        return bidMapper.insertSelective(record);
    }

    @Override
    public Bid selectByPrimaryKey(Integer id) {
        return bidMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(Bid record) {
        return bidMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Bid record) {
        return bidMapper.updateByPrimaryKey(record);
    }
    /**
     * 根据招标项目的id查询参与这个项目的投标的信息
     * @param projectbiddingid
     * @return
     */
    @Override
    public List<Bid> selectByProjectbiddingid(int projectbiddingid) {
     return   bidMapper.selectByProjectbiddingid(projectbiddingid);
    }

}
