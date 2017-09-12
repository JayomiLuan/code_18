package cn.itcast.day17.utils;

import javax.sql.DataSource;

import com.mchange.v2.c3p0.ComboPooledDataSource;

public class JdbcUtils {
	private static DataSource ds = new ComboPooledDataSource();
	
	//取得连接池对象的方法
	public static DataSource getDataSource(){
		return ds;
	}
	
}
