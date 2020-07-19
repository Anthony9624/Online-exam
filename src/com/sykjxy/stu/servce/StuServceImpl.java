package com.sykjxy.stu.servce;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import com.sykjxy.entity.Student;
import com.sykjxy.stu.dao.StuDaoImpl;
import com.sykjxy.tools.Joint;

public class StuServceImpl implements StuServce {
	private StuDaoImpl sdi = new StuDaoImpl();
	@Override
	//注册
	public boolean save(Student stu) {
		String sql = "insert into tb_student values(?,?,?,?,?,?,?,?,?)";
		String ID = getID();
		int m = sdi.update(sql, stu.getID(),stu.getName(),stu.getPwd(),stu.getSex(),stu.getJoinTime(),
						   stu.getQuestion(),stu.getAnswer(),stu.getProfession(),stu.getCardNo());
		
		return m==1;
	}

	@Override
	public boolean edit(Student stu) {
		 String sql = "update tb_student set  name=?,pwd=?,sex=?,question=?,answer=?,profession=?,cardNo=? where ID=?";
		 int m = sdi.update(sql, stu.getName(),stu.getPwd(),stu.getSex(),stu.getQuestion(),
				 			stu.getAnswer(),stu.getProfession(),stu.getCardNo(),stu.getID());
		return m==1;
	}

	@Override
	public boolean remove(Student stu) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Student> query(String id) {
		String sql = "select *from tb_student where id=?";
		List<Student> list = new ArrayList<Student>();
		list= sdi.query(sql, id);
		return list;
	}

	@Override
	public List<Student> login(String ID, String pwd) {
		String sql="select * from tb_student where ID=? AND pwd=?";
		List <Student> list = new ArrayList<Student>();
		list = sdi.query(sql, ID,pwd);	
		return list;
	}

	@Override
	// 自生成ID
	public String getID() {
		Joint jo = new Joint();
		String sql = "select max(ID) from tb_student";
		String maxId = sdi.getAnyField(sql);
		String ID ="";
		java.util.Date date=new java.util.Date();	//实例化java.util.Date()类
		String newTime = new SimpleDateFormat("yyyyMMdd").format(date);	//格式化当前日期
		if(maxId!=null) {
			int newId=Integer.parseInt(maxId.substring(10,16))+1;//取出最大准考证号中的数字编号+1
			String no=jo.jointId(newId);		//将生成的编号格式化为6位
//			System.out.println(newId);
		    ID = "CN"+newTime+no;
		}else {
			 ID = "CN"+newTime+"000001";
		}
		return ID;
		
	}

	@Override
	public String getQuestion(String id) {
		String sql = "select question from tb_student where ID=?";
		return sdi.getAnyField(sql, id);
	}

	@Override
	public String getPwd(String id, String question, String answer) {
		String sql = "select pwd from tb_student where ID=? and question=? and answer=? ";
		return sdi.getAnyField(sql, id,getQuestion(id),answer);
	}

	@Override
	public List<Student> getAllStu() {
		String sql = "select * from tb_student ORDER BY joinTime DESC";
		return sdi.query(sql);
	}

	@Override
	public int deleteStu(String[] delId) {
		int flag= 0;
		if(delId.length>0) {
			String id="'";
    		for(int i=0;i<delId.length;i++){
    			id=id+delId[i]+"','";
    		}
    		id=id.substring(0,id.length()-2);
    		String sql = "delete from tb_student where ID in(" +id +")";
    		flag = sdi.update(sql);
		}
    	
		return flag;
	}

}
