package com.sykjxy.taoti.dao;

import java.util.List;

import com.sykjxy.entity.TaoTi;

public interface TaoDao {
	
	public int update(String sql,Object...params);
	
	
	public List<TaoTi> query(String sql,Object...params);
	
	public String selectName(String sql,Object...params);
}
