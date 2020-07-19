package com.sykjxy.result.dao;

import java.util.ArrayList;
import java.util.List;

import com.sykjxy.entity.Sturesult;
import com.sykjxy.tools.DaoSupport;

public class ResDaoImpl extends DaoSupport implements ResDao{

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
	public List<Sturesult> query(String sql, Object... params) {
		List<Sturesult> list = new ArrayList<Sturesult>();
		try {
			connMysql();
			pstmt = conn.prepareStatement(sql);
			int i =1;
			for (Object param : params) {
				pstmt.setObject(i++, param);
			}
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Sturesult res = new Sturesult();
				res.setId(rs.getInt("id"));
				res.setStuId(rs.getString("stuId"));
				res.setWhichLesson(rs.getString("whichLesson"));
				res.setResSingle(rs.getInt("resSingle"));
				res.setResMore(rs.getInt("resMore"));
				res.setResTotal(rs.getInt("resTotal"));
				res.setJointime(rs.getDate("joinTime"));
				list.add(res);
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
