package com.wys.recruitment.utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FileUtils {
		/**
		 * 下载文件时，针对不同浏览器，进行附件名的编码
		 * 
		 * @param filename
		 *            下载文件名
		 * @param agent
		 *            客户端浏览器
		 * @return 编码后的下载附件名
		 * @throws IOException
		 */
		@SuppressWarnings("restriction")
		public static String encodeDownloadFilename(String filename, String agent)
				throws IOException {
			if (agent.contains("Firefox")) { // 火狐浏览器
			/*
				filename = filename.replaceAll("\r\n", "");*/
			} else { // IE及其他浏览器
				filename = URLEncoder.encode(filename, "utf-8");
				filename = filename.replace("+"," ");
			}
			return filename;
		}
		
		
		public static void download(HttpServletRequest request, HttpServletResponse response ,
				String fileName, String filePath) throws IOException {
			//System.out.println(filePath);
		    //设置响应头和客户端保存文件名
		    response.setCharacterEncoding("utf-8");
		    response.setContentType("multipart/form-data");
		    response.setHeader("Content-Disposition", "attachment;fileName="+fileName);
	        //打开本地文件流
	        InputStream inputStream = new FileInputStream(new File(filePath));
	        //激活下载操作
	        OutputStream os = response.getOutputStream();

	        //循环写入输出流
	        byte[] b = new byte[2048];
	        int length;
	        while ((length = inputStream.read(b)) > 0) {
	            os.write(b, 0, length);
	          
	        }
	        // 这里主要关闭。
	        os.flush();    
	        os.close();
	        inputStream.close();	
		}
}
