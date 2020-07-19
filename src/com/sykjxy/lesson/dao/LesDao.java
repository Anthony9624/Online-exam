package com.sykjxy.lesson.dao;

import java.util.List;

import com.sykjxy.entity.Lesson;

public interface LesDao {
	
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
	public List<Lesson> query(String sql,Object...params);
}
