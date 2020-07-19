package com.sykjxy.taoti.servce;

import java.util.List;

import com.sykjxy.entity.TaoTi;

public interface TaoServce {
	
	/**
	 *  ����taoti���е�������Ϣ
	 * @return
	 */
	public List<TaoTi> query();
	
	/**
	 * 
	 * @param Name ��������
	 * @param LessonId �γ�id
	 * @return �����������ݵ�����
	 */
	public int save(String Name,int LessonId);
	
	/**
	 *   ����id ����������Ϣ
	 * @param id 
	 * @param Name
	 * @param LessonId
	 * @return ���ظ��µ�����s
	 */
	public int edit(int id,String Name,int LessonId);
	
	/**
	 * 		����idTaoti��Ϣ
	 * @param id 
	 * @return TaoTi��Ϣ
	 */
	public TaoTi getTao(int id);
	
	/**
	 *  	����id����ɾ������
	 * @param delId
	 * @return ɾ�����ݵ�����
	 */
	public int remove(String[] delId);
	
	/**
	 * ����id��ѯTaoti����
	 * @param id
	 * @return
	 */
	public String getTaotiName(int id);
	/**
	 * 		 ���ݿγ�id��ѯ ����
	 * @param lessonId
	 * @return
	 */
	public String getTaoName(int lessonId);
	
}
