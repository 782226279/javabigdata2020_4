package com.mapper;

import com.domain.Usermenu;
import com.domain.Users;
import org.apache.ibatis.annotations.Param;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

public interface UsersMapper extends Mapper<Users> {

    Users selectByWorknameOrUsername(@Param("users") Users users);

    List<Usermenu> selectUsersMenu(@Param("user") Users user);
}