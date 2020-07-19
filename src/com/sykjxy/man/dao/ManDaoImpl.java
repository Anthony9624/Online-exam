package com.sykjxy.man.dao;

import java.util.ArrayList;
import java.util.List;

import com.sykjxy.entity.Manager;
import com.sykjxy.tools.DaoSupport;

public class ManDaoImpl extends DaoSupport implements ManDao{

	@Override
	public int update(String sql, Object... patams) {
		int m = 0;
		try {
			connMysql();
			pstmt = conn.prepareStatement(sql);
			int i = 1;
			for (Object patam : patams) {
				pstmt.setObject(i++, patam);
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
	public List<Manager> query(String sql, Object...patams) {
		 List<Manager> list = new ArrayList<Manager>();
		 try {
			connMysql();
			pstmt = conn.prepareStatement(sql);
			int i = 1;
			for (Object param : patams) {
				pstmt.setObject(i++, param);
			}
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Manager man = new Manager();
				man.setId(rs.getInt("ID"));
				man.setName(rs.getString("name"));
				man.setPwd(rs.getString("pwd"));
				list.add(man);
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
