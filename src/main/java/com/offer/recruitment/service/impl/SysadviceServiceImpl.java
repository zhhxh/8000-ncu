package com.offer.recruitment.service.impl;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.offer.recruitment.service.ISysadvice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.offer.recruitment.mapper.SysadviceMapper;
import com.offer.recruitment.pojo.Sysadvice;

@Transactional
@Service
public class SysadviceServiceImpl implements ISysadvice {
	@Autowired
	private SysadviceMapper sysadviceMapper;
	/*
	 * 保存消息
	 * 
	 * (non-Javadoc)
	 * @see ISysadvice#save(Sysadvice)
	 */
	@Override
	public void save(Sysadvice sysadvice) {
		sysadvice.setAdvicetime(new Date());
		sysadvice.setClassify("系统消息");
		sysadvice.setIsnew(1);
		sysadvice.setRemark("");
		sysadviceMapper.insert(sysadvice);
		
	}
	@Override
	public List<Map<String, Object>> listAll() {
		// TODO Auto-generated method stub
		return sysadviceMapper.listAll("系统消息");
	}
	@Override
	public int delete(Integer id) {
		// TODO Auto-generated method stub
		return sysadviceMapper.deleteByPrimaryKey(id);
	}
}
