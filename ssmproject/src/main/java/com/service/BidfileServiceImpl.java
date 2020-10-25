package com.service;

import org.springframework.stereotype.Service;

import javax.annotation.Resource;

import com.domain.Bidfile;
import com.mapper.BidfileMapper;
import com.service.BidfileService;

@Service
public class BidfileServiceImpl implements BidfileService {

    @Resource(name = "bidfileMapper")
    BidfileMapper bidfileMapper;

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return bidfileMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Bidfile record) {
        return bidfileMapper.insert(record);
    }

    @Override
    public int insertSelective(Bidfile record) {
        return bidfileMapper.insertSelective(record);
    }

    @Override
    public Bidfile selectByPrimaryKey(Integer id) {
        return bidfileMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(Bidfile record) {
        return bidfileMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Bidfile record) {
        return bidfileMapper.updateByPrimaryKey(record);
    }
}
