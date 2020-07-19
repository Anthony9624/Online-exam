package com.sykjxy.lesson.servce;

import java.util.List;

import com.sykjxy.entity.Lesson;

public interface LesServce {
	/**
	 *  	查询全部课程信息
	 * @return 返回全部课程信息
	 */
	public List<Lesson> selectAllles();
	
	/**
	 * 
	 * @param Name 课程名称
	 * @return 返回添加的条数
	 */
	public int save(String Name,String profession);
	
	/**
	 * 		根据选中的id数组删除课程表的信息
	 * @param delId
	 * @return 删除数据的条数
	 */
	public int remove(String[] delId);
	
	/**
	 * 		根据id返回所对应的课程名
	 * @param id
	 * @return
	 */
	public String getLessonName(int id);
	
	/**
	 * 		根据专业名称获取所有它所对应的所有课程名称
	 * @param profession
	 * @return List<Lesson>
	 */
	public List<Lesson> getLessonName(String profession);
	
}
