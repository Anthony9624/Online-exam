package com.sykjxy.man.dao;

import java.util.List;

import com.sykjxy.entity.Manager;

public interface ManDao {
	
	/**
	 * 
	 * @param sql 数据库操作语句 DML语句 增、删、改
	 * @param params 可变参数数组
	 * @return 数据库影响的数据条数
	 */
	public int update(String sql,Object...patams);
	
	/**
	 * 
	 * @param sql 数据库查询语句DQL语句 查
	 * @param params 可变参数数组
	 * @return Student信息的集合
	 */
	public List<Manager> query(String sql,Object...patams);
}
