package com.sykjxy.result.dao;

import java.util.List;

import com.sykjxy.entity.Sturesult;

public interface ResDao {

	public int update(String sql,Object...params);
	
	public List<Sturesult> query(String sql,Object...params);
}
