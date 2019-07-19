package com.offer.recruitment.service;

import java.util.List;
import java.util.Map;

import com.offer.recruitment.pojo.Sysadvice;

public interface ISysadvice {

	void save(Sysadvice sysadvice);

	List<Map<String, Object>> listAll();

	int delete(Integer id);

}
