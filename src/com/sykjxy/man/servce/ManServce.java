package com.sykjxy.man.servce;

import java.util.List;

import com.sykjxy.entity.Manager;

public interface ManServce {
	
	
	/**
	 * 
	 * @param man 添加的管理员的信息
	 * @return 返回添加的行数
	 */
	public int save(Manager man);
	
	/**
	 * 
	 * @param name 管理员账户
	 * @param pwd  管理员密码
	 * @return 满足上述两个条件的实例集合s
	 */
	public List<Manager> login(String name,String pwd);
	
	/**
	 * 
	 * @return 返回全部管理员信息
	 */
	public List<Manager> query();
	
	/**
	 * 
	 * @param id 管理员id
	 * @return 修改的行数
	 */
	public boolean edit(int id,String pwd);
	
	/**
	 * 
	 * @param id 管理员id
	 * @return true、false
	 */
	public boolean remove(int id);
	
	/**
	 * 		根据管理员id查询管理员信息
	 * @param id 管理员id
	 * @return 符合管理员的所有信息
	 */
	public Manager getManager(int id);
	
}
