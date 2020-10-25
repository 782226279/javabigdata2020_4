package com.mapper;

import com.domain.Supplier;
import org.apache.ibatis.annotations.Param;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

public interface SupplierMapper extends Mapper<Supplier> {

    List<Supplier> selectWhere(@Param("record") Supplier record);

    Supplier selectSupplierQualifications(@Param("supplier") Supplier supplier);
}