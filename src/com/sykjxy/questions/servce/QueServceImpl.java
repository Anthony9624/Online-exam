package com.sykjxy.questions.servce;

import java.util.Date;
import java.util.List;

import com.sykjxy.entity.Questions;
import com.sykjxy.questions.dao.QueDaoImpl;

public class QueServceImpl implements QueServce{
	private QueDaoImpl qdi = new QueDaoImpl();
	@Override
	public List<Questions> query() {
		String sql ="select *from tb_questions ORDER BY joinTime DESC";
		List<Questions> list = qdi.query(sql);
		return list;
	}
	@Override
	public boolean save(Questions que) {
		String sql ="insert into tb_questions(lessonId,taoTiId,subject,type,optionA,optionB,optionC,optionD,answer,note,joinTime)"
				+ "value(?,?,?,?,?,?,?,?,?,?,?)";
		int m = 0;
		m = qdi.update(sql, que.getLessonId(),que.getTaoTiId(),que.getSubject(),que.getType()
						,que.getOptionA(),que.getOptionB(),que.getOptionC(),que.getOptionD()
						,que.getAnswer(),que.getNote(),new Date());
		return m==1;
	}
	@Override
	public Questions getQuestions(int id) {
		String sql="select *from tb_questions where id=?";
		Questions que = qdi.query(sql, id).get(0);
		return que;
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
    		String sql = "delete from tb_questions where ID in(" +id +")";
    		flag = qdi.update(sql);
		}
		return flag;
	}
	@Override
	public int edit(Questions que,int id) {
		int m=0;
		String sql = "update tb_questions set lessonId=?,taoTiId=?,subject=?,"
				+ "type=?,optionA=?,optionB=?,optionC=?,optionD=?,answer=?,note=? where id=?";
		m = qdi.update(sql,que.getLessonId(),que.getTaoTiId(),que.getSubject(),que.getType()
				,que.getOptionA(),que.getOptionB(),que.getOptionC(),que.getOptionD()
				,que.getAnswer(),que.getNote(),id);
		return m;
	}
	@Override
	public List<Questions> getQue(int LessonID, String type) {
		String sql ="select*from tb_questions where LessonID=? and type=?";
		List<Questions> list = qdi.query(sql, LessonID,type);
		return list;
	}
	@Override
	public boolean isExistQue(int LessonId) {
		String sql ="select*from tb_questions where LessonID=?";
		int m = qdi.query(sql, LessonId).size();
		return m==0;
	}

}
