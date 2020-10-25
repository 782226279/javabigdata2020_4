package com.service;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import com.mapper.TestMapper;
import com.domain.Test;
import com.service.TestService;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class TestServiceImpl implements TestService{

    @Resource
    private TestMapper testMapper;

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return testMapper.deleteByPrimaryKey(id);
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED)
    public int insert(Test record) {
        return testMapper.insert(record);
    }

    @Override
    public int insertSelective(Test record) {
        return testMapper.insertSelective(record);
    }

    @Override
    public Test selectByPrimaryKey(Integer id) {
        return testMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(Test record) {
        return testMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Test record) {
        return testMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<Test> selectAllTest() {
        return testMapper.selectAll();
    }

}
