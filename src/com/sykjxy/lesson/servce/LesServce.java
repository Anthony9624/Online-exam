package com.sykjxy.lesson.servce;

import java.util.List;

import com.sykjxy.entity.Lesson;

public interface LesServce {
	/**
	 *  	��ѯȫ���γ���Ϣ
	 * @return ����ȫ���γ���Ϣ
	 */
	public List<Lesson> selectAllles();
	
	/**
	 * 
	 * @param Name �γ�����
	 * @return ������ӵ�����
	 */
	public int save(String Name,String profession);
	
	/**
	 * 		����ѡ�е�id����ɾ���γ̱����Ϣ
	 * @param delId
	 * @return ɾ�����ݵ�����
	 */
	public int remove(String[] delId);
	
	/**
	 * 		����id��������Ӧ�Ŀγ���
	 * @param id
	 * @return
	 */
	public String getLessonName(int id);
	
	/**
	 * 		����רҵ���ƻ�ȡ����������Ӧ�����пγ�����
	 * @param profession
	 * @return List<Lesson>
	 */
	public List<Lesson> getLessonName(String profession);
	
}
