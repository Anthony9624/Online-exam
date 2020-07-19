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
//	   int m = sdi.update(sql, "CN202006120000010","xinxin","jingjing","男",null,
//			   "我的生日","1221","计算机","210281199905060203"); 
	   StuServceImpl ssi = new StuServceImpl();
	   //测试登录功能
//	   System.out.println(ssi.login("CN20200611000009", "123456"));
	   //测试获取最大ID
//	   System.out.println(ssi.getID());
	   //测试注册
	   Student stu = new Student();
	   String id = ssi.getID();
	   System.out.println( ssi.getID());
	   stu.setID(id);
	   stu.setName("xinxin1");
	   stu.setPwd("123456");
	   stu.setSex("男");
	   stu.setJoinTime(new Date());
	   stu.setQuestion("我的生日");
	   stu.setAnswer("1221");
	   stu.setProfession("计算机科学与技术");
	   stu.setCardNo("1234567894545656");
	   System.out.println(stu.toString());
	   System.out.println(ssi.save(stu));
	 //测试拼接ID
//	   Joint jo = new Joint();
//	   System.out.println(jo.jointId(15));
	   //测试查找问题
//	   System.out.println(ssi.getQuestion("CN20200614000010"));
	   //测试查找密码
//	   System.out.println(ssi.getPwd("CN20200614000010", ssi.getQuestion("CN20200614000010"), "1221"));
	   //测试修改语句
//	   stu.setID("CN20200614000010");
//	   stu.setName("aaa");
//	   stu.setPwd("aaa");
//	   stu.setSex("女");
//	   stu.setQuestion("aaaaa");
//	   stu.setAnswer("aaaa");
//	   stu.setProfession("aaaa");
//	   stu.setCardNo("aaaaa");
//	   System.out.println(ssi.edit(stu));
	   //测试查询类
//	   System.out.println(ssi.query("CN20200614000010").toString());
	   //测试管理员登录类
	   ManServceImpl msi = new ManServceImpl();
	   //System.out.println(msi.login("admin", "admin").toString());
	   //测试新增管理员
	   Manager man = new Manager();
//	   man.setName("123456");
//	   man.setPwd("123456");
//	   System.out.println(msi.save(man));
	   //测试修改管理员pwd
	   //System.out.println( msi.edit(15, "654321"));
	   //测试删除管理员 
//	   System.out.println(msi.remove(23));
	   //测试查询全部学生信息
//	   System.out.println(ssi.getAllStu());
	   //测试根据ID数组删除全部学生信息
//	   String [] id = {"CN20200615000013"};
//	   System.out.println(ssi.deleteStu(id));
	   //测试查询成绩表
	   ResServceImpl rsi = new ResServceImpl();
//	   System.out.println(rsi.selectAllRes());
	   //测试模糊查询表
//	   System.out.println(rsi.selectSomeRes(2, "计算机"));
	   //测试查询全部课程
	   LesServceImpl lsi = new LesServceImpl();
//	   System.out.println(lsi.selectAllles());
	   //测试增加课程
//	   System.out.println(lsi.save("jssss程序设计"));
	   //测试删除课程
//	   String [] delId = {"31"};
//	   System.out.println(lsi.remove(delId));
	  // 测试查询题库
	   TaoServceImpl tsi = new TaoServceImpl();
//	   System.out.println(tsi.query());
	  //测试增加题库
	   //System.out.println(tsi.save("2020年上半年考试题", 29));
	   //测试更新题库
	   //System.out.println(tsi.edit(21, "2019年上学期电子商务期末考试",29 ));
//	   System.out.println(tsi.getTao(23).toString());
	   // 测试删除题库信息
//	   String [] delId = {"27","22"};
//	   System.out.println(tsi.remove(delId));
	   //测试根据id查询lessonName
//	   System.out.println(lsi.getLessonName(4));
	   //测试根据id查询taotiName
//	   System.out.println(tsi.getTaotiName(21));
	   //测试查询表questions的全部信息
	   QueServceImpl qsi = new QueServceImpl();
//	   System.out.println(qsi.query());
	   //测试增加questinos表信息
//	   Questions que = new Questions();
//	   que.setLessonId(5);
//	   que.setTaoTiId(10);
//	   que.setType("单选题");
//	   que.setSubject("Windows 2000是什么？");
//	   que.setOptionA("应用软件");
//	   que.setOptionB("操作系统");
//	   que.setOptionC("应用程序");
//	   que.setOptionD("以上都不是");
//	   que.setAnswer("D");
//	   System.out.println(qsi.edit(que, 52));
//	   System.out.println(qsi.save(que));
//	   //测试根据id查询信息
//	   System.out.println(qsi.getQuestions(37));
	   //测试根据专业名查询课程
//	   System.out.println(lsi.getLessonName("数学"));
	   //测试根据id 题的类型查询题的类型
//	   System.out.println(qsi.getQue(20, "单选题"));
	   //测试根据更新增加学生成绩
//	   Sturesult res = new Sturesult();
//	   res.setStuId("CN20200618000010");
//	   res.setWhichLesson("大学数学");
//	   res.setResSingle(60);
//	   res.setResMore(40);
//	   res.setResTotal(100);
//	   System.out.println(rsi.save(res));
//	   System.out.println(rsi.selectStuRes("CN20200618000010"));
	   //测试根据课程id查询查询试卷名称
//	   System.out.println(tsi.getTaoName(30));
	   //学生是否考完试
//	   System.out.println(rsi.determineStu("CN20200618000010", "大学数学2020年期末考试"));
	   //测试根据科目Id查询试题是否存在
	   System.out.println(qsi.isExistQue(6));
	}
}
