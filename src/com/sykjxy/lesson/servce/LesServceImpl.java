package com.sykjxy.lesson.servce;

import java.util.Date;
import java.util.List;

import com.sykjxy.entity.Lesson;
import com.sykjxy.lesson.dao.LesDaoImpl;

public class LesServceImpl implements LesServce {
	private LesDaoImpl ldi  = new LesDaoImpl();
	@Override
	public List<Lesson> selectAllles() {
		String sql = "select *from tb_lesson ORDER BY JoinTime DESC";
		List<Lesson> list = ldi.query(sql);
		
		return list;
	}
	@Override
	public int save(String Name,String profession) {
		int m=0;
		String sql="insert into tb_lesson (name,JoinTime,profession) values (?,?,?)";
		m =ldi.update(sql, Name,new Date(),profession);
		return m;
	}
	@Override
	public int remove(String[] delId) {

		int flag= 0;
		if(delId.length>0) {
			String id="'";
    		for(int i=0;i<delId.length;i++){
    			id=id+delId[i]+"','";
    		}
    		id=id.substring(0,id.length()-2);
    		String sql = "delete from tb_lesson where ID in(" +id +")";
    		flag = ldi.update(sql);
		}
    	
		return flag;
		}
	@Override
	public String getLessonName(int id) {
		String sql="select * from tb_lesson where id=?";
		String Name=ldi.query(sql, id).get(0).getName();
		return Name;
	}
	@Override
	public List<Lesson> getLessonName(String profession) {
		String sql="select * from tb_lesson where profession=?";
		List<Lesson> list = ldi.query(sql, profession);
		return list;
	}

}
