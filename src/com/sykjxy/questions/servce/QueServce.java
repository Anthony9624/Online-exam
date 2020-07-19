package com.sykjxy.questions.servce;

import java.util.List;

import com.sykjxy.entity.Questions;

public interface QueServce {
	
	/**
	 *  	查询题目的所有信息
	 * @return
	 */
	public List<Questions> query();
	
	/**
	 * 		
	 * @param que
	 * @return 增加的条数
	 */
	public boolean save(Questions que);
	
	/**
	 * 		根据id查询Questions
	 * @param id 
	 * @return 
	 */
	public Questions getQuestions(int id);
	
	/**
	 * 
	 * @param delId 要删除的题信息的id集合
	 * @return 返回删除的条数
	 */
	public int remove(String[] delId);
	
	/**
	 * 
	 * @param que 需要修改的题信息
	 * @return 更新信息的条数
	 */
	public int edit(Questions que,int id);
	
	/**
	 * 		 根据套题id 和	题的类型查询题
	 * @param taoTiId
	 * @param types
	 * @return
	 */
	public List<Questions> getQue(int LessonID,String type);
	
	/**
	 * 		根据课程id判断试题是否存在
	 * @param LessonId
	 * @return
	 */
	public boolean isExistQue(int LessonId);
	
}
