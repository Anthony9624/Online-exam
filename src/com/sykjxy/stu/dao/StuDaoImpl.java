package com.sykjxy.stu.dao;

import java.util.ArrayList;
import java.util.List;

import com.sykjxy.entity.Student;
import com.sykjxy.tools.DaoSupport;

public class StuDaoImpl extends DaoSupport implements StuDao{

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
	public List<Student> query(String sql, Object... params) {

		List<Student> list = new ArrayList<Student>();
		try {
			connMysql();
			pstmt = conn.prepareStatement(sql);
			int i = 1;
			for (Object param : params) {
				pstmt.setObject(i++, param);
			}
//			System.out.println(pstmt);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Student stu = new Student();
				stu.setID(rs.getString("ID"));
				stu.setName(rs.getString("name"));
				stu.setPwd(rs.getString("pwd"));
				stu.setSex(rs.getString("sex"));
				stu.setJoinTime(rs.getDate("jointime"));
				stu.setQuestion(rs.getString("question"));
				stu.setAnswer(rs.getString("answer"));
				stu.setProfession(rs.getString("profession"));
				stu.setCardNo(rs.getString("cardNo"));
				list.add(stu);
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
	public String getAnyField(String sql, Object... params) {
		String id = null;
		try {
			connMysql();
			pstmt = conn.prepareStatement(sql);
			int i = 1;
			for (Object param : params) {
				pstmt.setObject(i++, param);
			}
			rs = pstmt.executeQuery();
			while(rs.next()) {
				id = rs.getString(1);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			closeMysql();
		}
		
		return id;
	}

}
