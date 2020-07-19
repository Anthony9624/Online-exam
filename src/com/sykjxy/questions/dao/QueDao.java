package com.sykjxy.questions.dao;

import java.util.List;

import com.sykjxy.entity.Questions;

public interface QueDao {

	public int update(String sql,Object...params);
	
	public List<Questions> query(String sql,Object...params);
}
