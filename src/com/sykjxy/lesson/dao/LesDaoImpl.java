package com.sykjxy.lesson.dao;

import java.util.ArrayList;
import java.util.List;

import com.sykjxy.entity.Lesson;
import com.sykjxy.tools.DaoSupport;

public class LesDaoImpl extends DaoSupport implements LesDao {

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
	public List<Lesson> query(String sql, Object... params) {
		List<Lesson> list = new ArrayList<Lesson>();
		try {
			connMysql();
			pstmt = conn.prepareStatement(sql);
			int i =1;
			for (Object param : params) {
				pstmt.setObject(i++, param);
			}
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Lesson les = new Lesson();
				les.setId(rs.getInt("id"));
				les.setName(rs.getString("Name"));
				les.setJoinTime(rs.getDate("JoinTime"));
				les.setProfession(rs.getString("profession"));
				list.add(les);
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
