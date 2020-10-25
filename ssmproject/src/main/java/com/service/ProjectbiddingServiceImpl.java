package com.service;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import com.domain.Projectbidding;
import com.mapper.ProjectbiddingMapper;

import java.util.List;

@Service
public class ProjectbiddingServiceImpl implements ProjectbiddingService{

    @Resource
    private ProjectbiddingMapper projectbiddingMapper;

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return projectbiddingMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Projectbidding record) {
        return projectbiddingMapper.insert(record);
    }

    @Override
    public int insertSelective(Projectbidding record) {
        return projectbiddingMapper.insertSelective(record);
    }

    @Override
    public Projectbidding selectByPrimaryKey(Integer id) {
        return projectbiddingMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(Projectbidding record) {
        return projectbiddingMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Projectbidding record) {
        return projectbiddingMapper.updateByPrimaryKey(record);
    }
    @Override
    public List<Projectbidding> selectAll(Projectbidding projectbidding){
      return  projectbiddingMapper.select(projectbidding);
    }

    /**
     * 查询出正在招标的项目且关联了附件信息
     * @param projectbidding
     * @return
     */
    @Override
    public List<Projectbidding> selectAll2(Projectbidding projectbidding) {
        return projectbiddingMapper.selectAll2(projectbidding);
    }

    /**
     * 查询出可以开标的项目
     * @param projectbidding
     * @return
     */
    @Override
    public List<Projectbidding> selectAll3(Projectbidding projectbidding) {
        return projectbiddingMapper.selectAll3(projectbidding);
    }

}
