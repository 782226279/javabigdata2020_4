package com.service;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import com.domain.Projectbiddingfile;
import com.mapper.ProjectbiddingfileMapper;
import com.service.ProjectbiddingfileService;
@Service
public class ProjectbiddingfileServiceImpl implements ProjectbiddingfileService{

    @Resource
    private ProjectbiddingfileMapper projectbiddingfileMapper;

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return projectbiddingfileMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Projectbiddingfile record) {
        return projectbiddingfileMapper.insert(record);
    }

    @Override
    public int insertSelective(Projectbiddingfile record) {
        return projectbiddingfileMapper.insertSelective(record);
    }

    @Override
    public Projectbiddingfile selectByPrimaryKey(Integer id) {
        return projectbiddingfileMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(Projectbiddingfile record) {
        return projectbiddingfileMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Projectbiddingfile record) {
        return projectbiddingfileMapper.updateByPrimaryKey(record);
    }

}
