package com.sykjxy.man.dao;

import java.util.List;

import com.sykjxy.entity.Manager;

public interface ManDao {
	
	/**
	 * 
	 * @param sql ���ݿ������� DML��� ����ɾ����
	 * @param params �ɱ��������
	 * @return ���ݿ�Ӱ�����������
	 */
	public int update(String sql,Object...patams);
	
	/**
	 * 
	 * @param sql ���ݿ��ѯ���DQL��� ��
	 * @param params �ɱ��������
	 * @return Student��Ϣ�ļ���
	 */
	public List<Manager> query(String sql,Object...patams);
}
