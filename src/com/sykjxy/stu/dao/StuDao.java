package com.sykjxy.stu.dao;

import java.util.List;

import com.sykjxy.entity.Student;

public interface StuDao {
	/**
	 * 
	 * @param sql ���ݿ������� DML��� ����ɾ����
	 * @param params �ɱ��������
	 * @return ���ݿ�Ӱ�����������
	 */
    public int update(String sql,Object...params);
	/**
	 * 
	 * @param sql ���ݿ��ѯ���DQL��� ��
	 * @param params �ɱ��������
	 * @return Student��Ϣ�ļ���
	 */
	public List<Student> query(String sql,Object...params);
	
	/**
	 * 
	 * @param 
	 * @param params �ɱ��������a
	 * @return ����ĵ�������
	 */
	public String getAnyField(String sql,Object...params); 
}
