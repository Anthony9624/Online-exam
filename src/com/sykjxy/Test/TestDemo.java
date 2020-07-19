package com.sykjxy.Test;


import java.util.Date;

import com.sykjxy.entity.Manager;
import com.sykjxy.entity.Student;
import com.sykjxy.lesson.servce.LesServceImpl;
import com.sykjxy.man.servce.ManServceImpl;
import com.sykjxy.questions.servce.QueServceImpl;
import com.sykjxy.result.servce.ResServceImpl;
import com.sykjxy.stu.dao.StuDaoImpl;
import com.sykjxy.stu.servce.StuServceImpl;
import com.sykjxy.taoti.servce.TaoServceImpl;

public class TestDemo {
   public static void main(String [] agrs) {
	   StuDaoImpl sdi = new StuDaoImpl();
//	   String sql="select * from tb_student where ID= ?";
//	   List<Student>  list =  sdi.query(sql, "CN20071225000005");
//	   System.out.println(list);
//	   String sql ="insert into tb_student values(?,?,?,?,?,?,?,?,?)";
//	   int m = sdi.update(sql, "CN202006120000010","xinxin","jingjing","��",null,
//			   "�ҵ�����","1221","�����","210281199905060203"); 
	   StuServceImpl ssi = new StuServceImpl();
	   //���Ե�¼����
//	   System.out.println(ssi.login("CN20200611000009", "123456"));
	   //���Ի�ȡ���ID
//	   System.out.println(ssi.getID());
	   //����ע��
	   Student stu = new Student();
	   String id = ssi.getID();
	   System.out.println( ssi.getID());
	   stu.setID(id);
	   stu.setName("xinxin1");
	   stu.setPwd("123456");
	   stu.setSex("��");
	   stu.setJoinTime(new Date());
	   stu.setQuestion("�ҵ�����");
	   stu.setAnswer("1221");
	   stu.setProfession("�������ѧ�뼼��");
	   stu.setCardNo("1234567894545656");
	   System.out.println(stu.toString());
	   System.out.println(ssi.save(stu));
	 //����ƴ��ID
//	   Joint jo = new Joint();
//	   System.out.println(jo.jointId(15));
	   //���Բ�������
//	   System.out.println(ssi.getQuestion("CN20200614000010"));
	   //���Բ�������
//	   System.out.println(ssi.getPwd("CN20200614000010", ssi.getQuestion("CN20200614000010"), "1221"));
	   //�����޸����
//	   stu.setID("CN20200614000010");
//	   stu.setName("aaa");
//	   stu.setPwd("aaa");
//	   stu.setSex("Ů");
//	   stu.setQuestion("aaaaa");
//	   stu.setAnswer("aaaa");
//	   stu.setProfession("aaaa");
//	   stu.setCardNo("aaaaa");
//	   System.out.println(ssi.edit(stu));
	   //���Բ�ѯ��
//	   System.out.println(ssi.query("CN20200614000010").toString());
	   //���Թ���Ա��¼��
	   ManServceImpl msi = new ManServceImpl();
	   //System.out.println(msi.login("admin", "admin").toString());
	   //������������Ա
	   Manager man = new Manager();
//	   man.setName("123456");
//	   man.setPwd("123456");
//	   System.out.println(msi.save(man));
	   //�����޸Ĺ���Աpwd
	   //System.out.println( msi.edit(15, "654321"));
	   //����ɾ������Ա 
//	   System.out.println(msi.remove(23));
	   //���Բ�ѯȫ��ѧ����Ϣ
//	   System.out.println(ssi.getAllStu());
	   //���Ը���ID����ɾ��ȫ��ѧ����Ϣ
//	   String [] id = {"CN20200615000013"};
//	   System.out.println(ssi.deleteStu(id));
	   //���Բ�ѯ�ɼ���
	   ResServceImpl rsi = new ResServceImpl();
//	   System.out.println(rsi.selectAllRes());
	   //����ģ����ѯ��
//	   System.out.println(rsi.selectSomeRes(2, "�����"));
	   //���Բ�ѯȫ���γ�
	   LesServceImpl lsi = new LesServceImpl();
//	   System.out.println(lsi.selectAllles());
	   //�������ӿγ�
//	   System.out.println(lsi.save("jssss�������"));
	   //����ɾ���γ�
//	   String [] delId = {"31"};
//	   System.out.println(lsi.remove(delId));
	  // ���Բ�ѯ���
	   TaoServceImpl tsi = new TaoServceImpl();
//	   System.out.println(tsi.query());
	  //�����������
	   //System.out.println(tsi.save("2020���ϰ��꿼����", 29));
	   //���Ը������
	   //System.out.println(tsi.edit(21, "2019����ѧ�ڵ���������ĩ����",29 ));
//	   System.out.println(tsi.getTao(23).toString());
	   // ����ɾ�������Ϣ
//	   String [] delId = {"27","22"};
//	   System.out.println(tsi.remove(delId));
	   //���Ը���id��ѯlessonName
//	   System.out.println(lsi.getLessonName(4));
	   //���Ը���id��ѯtaotiName
//	   System.out.println(tsi.getTaotiName(21));
	   //���Բ�ѯ��questions��ȫ����Ϣ
	   QueServceImpl qsi = new QueServceImpl();
//	   System.out.println(qsi.query());
	   //��������questinos����Ϣ
//	   Questions que = new Questions();
//	   que.setLessonId(5);
//	   que.setTaoTiId(10);
//	   que.setType("��ѡ��");
//	   que.setSubject("Windows 2000��ʲô��");
//	   que.setOptionA("Ӧ�����");
//	   que.setOptionB("����ϵͳ");
//	   que.setOptionC("Ӧ�ó���");
//	   que.setOptionD("���϶�����");
//	   que.setAnswer("D");
//	   System.out.println(qsi.edit(que, 52));
//	   System.out.println(qsi.save(que));
//	   //���Ը���id��ѯ��Ϣ
//	   System.out.println(qsi.getQuestions(37));
	   //���Ը���רҵ����ѯ�γ�
//	   System.out.println(lsi.getLessonName("��ѧ"));
	   //���Ը���id ������Ͳ�ѯ�������
//	   System.out.println(qsi.getQue(20, "��ѡ��"));
	   //���Ը��ݸ�������ѧ���ɼ�
//	   Sturesult res = new Sturesult();
//	   res.setStuId("CN20200618000010");
//	   res.setWhichLesson("��ѧ��ѧ");
//	   res.setResSingle(60);
//	   res.setResMore(40);
//	   res.setResTotal(100);
//	   System.out.println(rsi.save(res));
//	   System.out.println(rsi.selectStuRes("CN20200618000010"));
	   //���Ը��ݿγ�id��ѯ��ѯ�Ծ�����
//	   System.out.println(tsi.getTaoName(30));
	   //ѧ���Ƿ�����
//	   System.out.println(rsi.determineStu("CN20200618000010", "��ѧ��ѧ2020����ĩ����"));
	   //���Ը��ݿ�ĿId��ѯ�����Ƿ����
	   System.out.println(qsi.isExistQue(6));
	}
}
