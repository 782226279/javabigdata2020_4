package com.service;

import com.domain.Usermenu;
import com.domain.Users;

import java.util.List;

public interface UsersService{


    int deleteByPrimaryKey(Integer id);

    int insert(Users record);

    int insertSelective(Users record);

    Users selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Users record);

    int updateByPrimaryKey(Users record);

    /**
     * 根据用户名和密码、工号和密码进行查询判断用户是否存在
     */
    Users selectByWorknameOrUsername(Users users);

    /**
     * 根据用户的id，获取的用户的菜单权限树
     * @param user
     */
    List<Usermenu> selectUsersMenu(Users user);
}
