package com.sykjxy.taoti.servce;

import java.util.List;

import com.sykjxy.entity.TaoTi;

public interface TaoServce {
	
	/**
	 *  返回taoti表中的所有信息
	 * @return
	 */
	public List<TaoTi> query();
	
	/**
	 * 
	 * @param Name 套题名称
	 * @param LessonId 课程id
	 * @return 返回增加数据的条数
	 */
	public int save(String Name,int LessonId);
	
	/**
	 *   根据id 更新题库的信息
	 * @param id 
	 * @param Name
	 * @param LessonId
	 * @return 返回更新的条数s
	 */
	public int edit(int id,String Name,int LessonId);
	
	/**
	 * 		根据idTaoti信息
	 * @param id 
	 * @return TaoTi信息
	 */
	public TaoTi getTao(int id);
	
	/**
	 *  	根据id数组删除数据
	 * @param delId
	 * @return 删除数据的条数
	 */
	public int remove(String[] delId);
	
	/**
	 * 根据id查询Taoti名称
	 * @param id
	 * @return
	 */
	public String getTaotiName(int id);
	/**
	 * 		 根据课程id查询 套题
	 * @param lessonId
	 * @return
	 */
	public String getTaoName(int lessonId);
	
}
