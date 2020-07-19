package com.sykjxy.result.servce;

import java.util.List;

import com.sykjxy.entity.Sturesult;

public interface ResServce {
	
	/**
	 * 
	 * @return 全部已考试的学生信息
	 */
	public List<Sturesult> selectAllRes();
	
	/**
	 * 
	 * @param voucher 根据它来判断前端是由要根据id查找还课程查找
	 * @param keyword 关键字
	 * @return 符合关键字得数据集合
	 */
	public List<Sturesult> selectSomeRes(int  voucher, String keyword);
	
	/**
	 *     根据res这里的信息往Sturesult中增加数据
	 * @param res 
	 * @return
	 */
	public int save(Sturesult res);
	
	/**
	 * 			根据学生id查询学生信息
	 * @param stuId
	 * @return 返回的成绩表的信息
	 */
	public  List<Sturesult> selectStuRes(String stuId);
	
	/**
	 * 		  根据学生id 和试卷名称 判断该名学生成绩
	 * @param stuId
	 * @param taoName
	 * @return
	 */
	public boolean determineStu(String stuId,String taoName);
}
