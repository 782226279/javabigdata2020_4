package com.service;

import org.springframework.stereotype.Service;

import javax.annotation.Resource;

import com.domain.Supplier;
import com.mapper.SupplierMapper;
import com.service.SupplierService;

import java.util.List;

@Service
public class SupplierServiceImpl implements SupplierService {

    @Resource
    private SupplierMapper supplierMapper;

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return supplierMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Supplier record) {
        return supplierMapper.insert(record);
    }

    @Override
    public int insertSelective(Supplier record) {
        return supplierMapper.insertSelective(record);
    }

    @Override
    public Supplier selectByPrimaryKey(Integer id) {
        return supplierMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(Supplier record) {
        return supplierMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Supplier record) {
        return supplierMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<Supplier> selectSupplier(Supplier record) {

        return supplierMapper.selectWhere(record);
    }

    @Override
    public Supplier selectSupplierQualifications(Supplier supplier) {
        return supplierMapper.selectSupplierQualifications(supplier);
    }

    @Override
    public Supplier selectSupplier2(Supplier record) {
        return supplierMapper.selectOne(record);
    }

}
