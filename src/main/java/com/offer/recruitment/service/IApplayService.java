package com.offer.recruitment.service;

import java.util.List;
import java.util.Map;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;

import com.offer.recruitment.pojo.Applay;

public interface IApplayService {

	int saveApplay(Applay applay);

	Applay findByUidAndMid(Integer uid, String mid);

	List<Map<String, Object>> selectByUidAndState(Integer uid, Integer state, Integer page1);

	int countNumber(Integer id, Integer state);

	List<Map<String, Object>> selectByCid(Integer id, String jobname, String state);

	void updateStateById(Integer aid, Integer string);

	boolean invited(Integer id);

	boolean refuse(Integer id);

	void deleteByPrimaryKey(Integer id);

	

	HSSFWorkbook export(Integer id, String jobname, String state);

	List<Map<String, Object>> selectByUidAndState1(Integer uid, Integer state, Integer page);

}
