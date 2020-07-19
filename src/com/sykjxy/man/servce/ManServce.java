package com.sykjxy.man.servce;

import java.util.List;

import com.sykjxy.entity.Manager;

public interface ManServce {
	
	
	/**
	 * 
	 * @param man ��ӵĹ���Ա����Ϣ
	 * @return ������ӵ�����
	 */
	public int save(Manager man);
	
	/**
	 * 
	 * @param name ����Ա�˻�
	 * @param pwd  ����Ա����
	 * @return ������������������ʵ������s
	 */
	public List<Manager> login(String name,String pwd);
	
	/**
	 * 
	 * @return ����ȫ������Ա��Ϣ
	 */
	public List<Manager> query();
	
	/**
	 * 
	 * @param id ����Աid
	 * @return �޸ĵ�����
	 */
	public boolean edit(int id,String pwd);
	
	/**
	 * 
	 * @param id ����Աid
	 * @return true��false
	 */
	public boolean remove(int id);
	
	/**
	 * 		���ݹ���Աid��ѯ����Ա��Ϣ
	 * @param id ����Աid
	 * @return ���Ϲ���Ա��������Ϣ
	 */
	public Manager getManager(int id);
	
}
