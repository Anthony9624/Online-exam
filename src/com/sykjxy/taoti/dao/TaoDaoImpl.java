package com.sykjxy.taoti.dao;

import java.util.ArrayList;
import java.util.List;

import com.sykjxy.entity.Student;
import com.sykjxy.entity.TaoTi;
import com.sykjxy.tools.DaoSupport;

public class TaoDaoImpl extends DaoSupport implements TaoDao{

	@Override
	public int update(String sql, Object... params) {
		//调用DaoSupport中connMysql()方法的连接数据库
		int m = 0;
		try {
			connMysql();
			pstmt = conn.prepareStatement(sql);
			int i = 1;
			//给所有的?位置变量赋值
			//使用多态
			for (Object param : params) {
				pstmt.setObject(i++, param);
			}
			m = pstmt.executeUpdate();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			//调用DaoSupport中的closeMysql()连接数据库
			closeMysql();
		}
		
		return m;
	}

	@Override
	public List<TaoTi> query(String sql, Object... params) {

		List<TaoTi> list = new ArrayList<TaoTi>();
		try {
			connMysql();
			pstmt = conn.prepareStatement(sql);
			int i = 1;
			for (Object param : params) {
				pstmt.setObject(i++, param);
			}
			rs = pstmt.executeQuery();
			while(rs.next()) {
				TaoTi tao = new TaoTi();
				tao.setId(rs.getInt("ID"));
				tao.setName(rs.getString("NAME"));
				tao.setLessonId(rs.getInt("LessonID"));
				tao.setLessonName(rs.getString("lesName"));
				tao.setJointime(rs.getDate("Jointime"));
				list.add(tao);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			closeMysql();
		}
		return list;
	
	}

	@Override
	public String selectName(String sql, Object... params) {
		String Name = null;
		try {
			connMysql();
			pstmt = conn.prepareStatement(sql);
			int i = 1;
			for (Object param : params) {
				pstmt.setObject(i++, param);
			}
			rs = pstmt.executeQuery();
			if(rs.next()) {
				Name = rs.getString("Name");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			closeMysql();
		}
		return Name;
	
	}

}
