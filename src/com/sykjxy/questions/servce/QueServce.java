package com.sykjxy.questions.servce;

import java.util.List;

import com.sykjxy.entity.Questions;

public interface QueServce {
	
	/**
	 *  	��ѯ��Ŀ��������Ϣ
	 * @return
	 */
	public List<Questions> query();
	
	/**
	 * 		
	 * @param que
	 * @return ���ӵ�����
	 */
	public boolean save(Questions que);
	
	/**
	 * 		����id��ѯQuestions
	 * @param id 
	 * @return 
	 */
	public Questions getQuestions(int id);
	
	/**
	 * 
	 * @param delId Ҫɾ��������Ϣ��id����
	 * @return ����ɾ��������
	 */
	public int remove(String[] delId);
	
	/**
	 * 
	 * @param que ��Ҫ�޸ĵ�����Ϣ
	 * @return ������Ϣ������
	 */
	public int edit(Questions que,int id);
	
	/**
	 * 		 ��������id ��	������Ͳ�ѯ��
	 * @param taoTiId
	 * @param types
	 * @return
	 */
	public List<Questions> getQue(int LessonID,String type);
	
	/**
	 * 		���ݿγ�id�ж������Ƿ����
	 * @param LessonId
	 * @return
	 */
	public boolean isExistQue(int LessonId);
	
}
