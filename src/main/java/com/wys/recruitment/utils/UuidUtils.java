package com.wys.recruitment.utils;

import java.util.UUID;

import com.wys.recruitment.exception.NullDataException;

public class UuidUtils {
	/** 
	*  获得一个UUID 
	*  自己指定返回的长度+前缀
	* @return String UUID 
	 * @throws NullDataException 
	*/ 
	public static String getUUID(String qianZhui,int i) throws NullDataException{ 
		if(i<=0) {
			//如果i为不合法的数据，抛出异常
			throw new NullDataException();
		}
		String uuid = UUID.randomUUID().toString(); 
		
		uuid =  uuid.replaceAll("-", "");
		
		return qianZhui+"-"+uuid.substring(0, i);
	}
	
	public static void main(String[] args) throws NullDataException {
		String s = UuidUtils.getUUID("xiaozheng", 20);
		System.out.println(s);
	}
}
