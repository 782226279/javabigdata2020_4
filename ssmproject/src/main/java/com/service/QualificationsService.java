package com.service;

import com.domain.Qualifications;
public interface QualificationsService{


    int deleteByPrimaryKey(Integer id);

    int insert(Qualifications record);

    int insertSelective(Qualifications record);

    Qualifications selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Qualifications record);

    int updateByPrimaryKey(Qualifications record);

}
