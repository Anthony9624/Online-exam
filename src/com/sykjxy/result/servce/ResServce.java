package com.sykjxy.result.servce;

import java.util.List;

import com.sykjxy.entity.Sturesult;

public interface ResServce {
	
	/**
	 * 
	 * @return ȫ���ѿ��Ե�ѧ����Ϣ
	 */
	public List<Sturesult> selectAllRes();
	
	/**
	 * 
	 * @param voucher ���������ж�ǰ������Ҫ����id���һ��γ̲���
	 * @param keyword �ؼ���
	 * @return ���Ϲؼ��ֵ����ݼ���
	 */
	public List<Sturesult> selectSomeRes(int  voucher, String keyword);
	
	/**
	 *     ����res�������Ϣ��Sturesult����������
	 * @param res 
	 * @return
	 */
	public int save(Sturesult res);
	
	/**
	 * 			����ѧ��id��ѯѧ����Ϣ
	 * @param stuId
	 * @return ���صĳɼ������Ϣ
	 */
	public  List<Sturesult> selectStuRes(String stuId);
	
	/**
	 * 		  ����ѧ��id ���Ծ����� �жϸ���ѧ���ɼ�
	 * @param stuId
	 * @param taoName
	 * @return
	 */
	public boolean determineStu(String stuId,String taoName);
}
