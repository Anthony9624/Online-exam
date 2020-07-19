package com.sykjxy.stu.servce;

import java.util.List;

import com.sykjxy.entity.Student;

public interface StuServce {
	/**
	 *  	 ע�ᣨ���ӣ�ѧ����Ϣ�ķ���
	 * @param stu 
	 * @return 
	 */
	public boolean  save(Student stu);
	 /**
	  *       	�༭���޸ģ�ѧ����Ϣ�ķ���
	  * @param stu
	  * @return
	  */
	public boolean edit(Student stu);
	/**
	 * 		ɾ��ѧ����Ϣ�ķ���
	 * @param stu
	 * @return
	 */
	
	public boolean remove(Student stu);
	
	/**
	 * 
	 * @param id ����id��������ѧ����ȫ����Ϣ
	 * @return ����ѧ����ȫ����Ϣ
	 */
	public List<Student> query(String id);
	
	/**
	 * 	 	��¼����
	 * @param ID ѧ��׼��֤��
	 * @param pwd ѧ������
	 * @return
	 */
	public  List<Student> login(String ID,String pwd); 
	
	/**
	 *  �Զ�����ID
	 * @return ID
	 */
	public String getID();
	
	/**
	 * 		  ����id��ѯ����
	 * @param Id
	 * @return ����
	 */
	public String getQuestion(String id);
	
	/**
	 * 		�����˺�����𰸹���ȡ�˺�����
	 * @param id �˺�
	 * @param question ����
	 * @param answer ��
	 * @return
	 */
	public String getPwd(String id,String question,String answer);
	
	/**
	 * 		��ѯȫ����ѧ��
	 * @return ȫ��ѧ����Ϣ�ļ���
	 */
	public List<Student> getAllStu();
	
	/**
	 * 
	 * @param id Ҫɾ����ѧ��id������
	 * @return ɾ�����ݵ�����
	 */
	public int deleteStu(String[] delId);
	
}
