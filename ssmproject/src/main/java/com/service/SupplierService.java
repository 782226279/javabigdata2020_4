package com.service;

import com.domain.Supplier;

import java.util.List;

public interface SupplierService{


    int deleteByPrimaryKey(Integer id);

    int insert(Supplier record);

    int insertSelective(Supplier record);

    Supplier selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Supplier record);

    int updateByPrimaryKey(Supplier record);

    List<Supplier> selectSupplier(Supplier record);

    Supplier selectSupplierQualifications(Supplier supplier);

    Supplier selectSupplier2(Supplier record);
}
