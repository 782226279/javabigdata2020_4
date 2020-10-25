package com.service;

import com.domain.Usermenu;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import com.mapper.UsersMapper;
import com.domain.Users;

import java.util.List;

@Service
public class UsersServiceImpl implements UsersService{

    @Resource
    private UsersMapper usersMapper;

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return usersMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Users record) {
        return usersMapper.insert(record);
    }

    @Override
    public int insertSelective(Users record) {
        return usersMapper.insertSelective(record);
    }

    @Override
    public Users selectByPrimaryKey(Integer id) {
        return usersMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(Users record) {
        return usersMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Users record) {
        return usersMapper.updateByPrimaryKey(record);
    }

    @Override
    public Users selectByWorknameOrUsername(Users users) {
        return usersMapper.selectByWorknameOrUsername(users);
    }

    /**
     * 根据用户的id，获取的用户的菜单权限树
     * @param user
     */
    @Override
    public List<Usermenu> selectUsersMenu(Users user) {
        return usersMapper.selectUsersMenu(user);
    }

}
