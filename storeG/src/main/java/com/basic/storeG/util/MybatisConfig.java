package com.basic.storeG.util;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


public class MybatisConfig {
	
	private static SqlSessionFactory sqlSessionFactory;
	
	static {
		try {
			System.out.println("MybatisConfig입장");
			String resource = "com/basic/storeG/mybatis/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory  = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public static SqlSessionFactory getInstance() {
		return sqlSessionFactory;
	}
	
}
