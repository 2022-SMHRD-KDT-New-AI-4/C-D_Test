package com.smhrd.db;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionManager {


	private static SqlSessionFactory SqlSessionFactory;
	 
	static {
		try {
			String resource = "com/smhrd/db/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			SqlSessionFactory =
					new SqlSessionFactoryBuilder().build(inputStream);
		} catch (IOException e) {
		
		}
	}
	
	public static SqlSessionFactory getSqlSession() {
		return SqlSessionFactory;
	}
	
}
