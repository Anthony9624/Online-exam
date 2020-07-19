package com.sykjxy.questions.dao;

import java.util.ArrayList;
import java.util.List;

import com.sykjxy.entity.Lesson;
import com.sykjxy.entity.Questions;
import com.sykjxy.lesson.servce.LesServceImpl;
import com.sykjxy.taoti.servce.TaoServceImpl;
import com.sykjxy.tools.DaoSupport;

public class QueDaoImpl extends DaoSupport implements QueDao {

	@Override
	public int update(String sql, Object... params) {
		int m =0;
		try {
			connMysql();
			pstmt = conn.prepareStatement(sql);
			int i=1;
			for (Object param : params) {
				pstmt.setObject(i++, param);
			}
			m = pstmt.executeUpdate();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			closeMysql();
		}
		
		return m;
	}

	@Override
	public List<Questions> query(String sql, Object... params) {
		List<Questions> list = new ArrayList<Questions>();
		LesServceImpl lsi = new LesServceImpl();
		TaoServceImpl tsi = new TaoServceImpl();
		try {
			connMysql();
			pstmt = conn.prepareStatement(sql);
			int i =1;
			for (Object param : params) {
				pstmt.setObject(i++, param);
			}
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Questions que = new Questions();
				que.setId(rs.getInt("id"));
				que.setSubject(rs.getString("subject"));
				que.setType(rs.getString("type"));
				que.setJoinTime(rs.getDate("Jointime"));
				que.setLessonId(rs.getInt("lessonId"));
				que.setLessonName(lsi.getLessonName(rs.getInt("lessonId")));
				que.setTaoTiId(rs.getInt("taoTiId"));
				que.setTaoTiName(tsi.getTaotiName(rs.getInt("taoTiId")));
				que.setOptionA(rs.getString("optionA"));
				que.setOptionB(rs.getString("optionB"));
				que.setOptionC(rs.getString("optionC"));
				que.setOptionD(rs.getString("optionD"));
				que.setAnswer(rs.getString("answer"));
				que.setNote(rs.getString("note"));
				list.add(que);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			closeMysql();
		}
		
		return list;
	}

}
