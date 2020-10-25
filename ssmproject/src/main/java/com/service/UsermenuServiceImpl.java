package com.service;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import com.domain.Usermenu;
import com.mapper.UsermenuMapper;
import com.service.UsermenuService;
@Service
public class UsermenuServiceImpl implements UsermenuService{

    @Resource
    private UsermenuMapper usermenuMapper;

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return usermenuMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Usermenu record) {
        return usermenuMapper.insert(record);
    }

    @Override
    public int insertSelective(Usermenu record) {
        return usermenuMapper.insertSelective(record);
    }

    @Override
    public Usermenu selectByPrimaryKey(Integer id) {
        return usermenuMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(Usermenu record) {
        return usermenuMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Usermenu record) {
        return usermenuMapper.updateByPrimaryKey(record);
    }

}
