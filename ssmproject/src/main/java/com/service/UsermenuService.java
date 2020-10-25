package com.service;

import com.domain.Usermenu;
public interface UsermenuService{


    int deleteByPrimaryKey(Integer id);

    int insert(Usermenu record);

    int insertSelective(Usermenu record);

    Usermenu selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Usermenu record);

    int updateByPrimaryKey(Usermenu record);

}
