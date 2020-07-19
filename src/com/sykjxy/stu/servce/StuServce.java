package com.sykjxy.stu.servce;

import java.util.List;

import com.sykjxy.entity.Student;

public interface StuServce {
	/**
	 *  	 注册（增加）学生信息的方法
	 * @param stu 
	 * @return 
	 */
	public boolean  save(Student stu);
	 /**
	  *       	编辑（修改）学生信息的方法
	  * @param stu
	  * @return
	  */
	public boolean edit(Student stu);
	/**
	 * 		删除学生信息的方法
	 * @param stu
	 * @return
	 */
	
	public boolean remove(Student stu);
	
	/**
	 * 
	 * @param id 根据id返回这名学生的全部信息
	 * @return 这名学生的全部信息
	 */
	public List<Student> query(String id);
	
	/**
	 * 	 	登录方法
	 * @param ID 学生准考证号
	 * @param pwd 学生密码
	 * @return
	 */
	public  List<Student> login(String ID,String pwd); 
	
	/**
	 *  自动生成ID
	 * @return ID
	 */
	public String getID();
	
	/**
	 * 		  根据id查询问题
	 * @param Id
	 * @return 问题
	 */
	public String getQuestion(String id);
	
	/**
	 * 		根据账号密码答案过获取账号密码
	 * @param id 账号
	 * @param question 问题
	 * @param answer 答案
	 * @return
	 */
	public String getPwd(String id,String question,String answer);
	
	/**
	 * 		查询全部的学生
	 * @return 全部学生信息的集合
	 */
	public List<Student> getAllStu();
	
	/**
	 * 
	 * @param id 要删除的学生id的数组
	 * @return 删除数据的条数
	 */
	public int deleteStu(String[] delId);
	
}
