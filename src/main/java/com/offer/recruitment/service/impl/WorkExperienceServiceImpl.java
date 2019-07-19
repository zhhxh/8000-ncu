package com.offer.recruitment.service.impl;

import java.util.List;

import com.offer.recruitment.service.IWorkExperienceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.offer.recruitment.mapper.WorkexperienceMapper;
import com.offer.recruitment.pojo.Workexperience;

@Service
@Transactional
public class WorkExperienceServiceImpl implements IWorkExperienceService {
	@Autowired
	private WorkexperienceMapper workexperienceMapper;
	/**
	 * 保存工作经验
	 */
	@Override
	public int saveWorkexperience(Workexperience workexperience) {
		// TODO Auto-generated method stub
		return workexperienceMapper.insert(workexperience);
	}
	/**
	 * 根据简历的id查看出所有的工作经验
	 */
	@Override
	public List<Workexperience> selectByUid(int userId) {
		//将该信息标记为已读状态，
		return workexperienceMapper.selectByUid(userId);
	}
	/**
	 * 删除工作经验根据id
	 */
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return workexperienceMapper.deleteByPrimaryKey(id);
	}
	/**
	 * 根据ID查询出具体的工作经验
	 */
	@Override
	public Workexperience selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return workexperienceMapper.selectByPrimaryKey(id);
	}
	/**
	 * 更新工作经验根据id
	 */
	@Override
	public int updateWorkexperience(Workexperience workexperience) {
		//1.0 找到原来的数据
		Workexperience workexperience2 = workexperienceMapper.selectByPrimaryKey(workexperience.getId());
		//2.0 修改操作  11 个字段
		workexperience2.setCompanyname(workexperience.getCompanyname());
		workexperience2.setDepartment(workexperience.getDepartment());
		workexperience2.setDuty(workexperience.getDuty());
		workexperience2.setEndmonth(workexperience.getEndmonth());
		workexperience2.setEndyear(workexperience.getEndyear());
		workexperience2.setNature(workexperience.getNature());
		workexperience2.setPosition(workexperience.getPosition());
		workexperience2.setStartmonth(workexperience.getStartmonth());
		workexperience2.setStartyear(workexperience.getStartyear());
		workexperience2.setType(workexperience.getType());
		workexperience2.setWeight(workexperience.getWeight());
		return workexperienceMapper.updateByPrimaryKey(workexperience2);
	}
}
