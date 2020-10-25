package com.service;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import com.domain.Qualifications;
import com.mapper.QualificationsMapper;
import com.service.QualificationsService;
@Service
public class QualificationsServiceImpl implements QualificationsService{

    @Resource
    private QualificationsMapper qualificationsMapper;

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return qualificationsMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Qualifications record) {
        return qualificationsMapper.insert(record);
    }

    @Override
    public int insertSelective(Qualifications record) {
        return qualificationsMapper.insertSelective(record);
    }

    @Override
    public Qualifications selectByPrimaryKey(Integer id) {
        return qualificationsMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(Qualifications record) {
        return qualificationsMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Qualifications record) {
        return qualificationsMapper.updateByPrimaryKey(record);
    }

}
