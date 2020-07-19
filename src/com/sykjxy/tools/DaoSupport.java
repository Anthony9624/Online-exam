package com.sykjxy.tools;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DaoSupport {
	protected Connection conn=null;
	protected Statement stmt = null;
	protected PreparedStatement pstmt = null;
	protected ResultSet rs = null;
	
	protected void connMysql() throws Exception {
		//��һ��������������
		Class.forName("com.mysql.jdbc.Driver");
		//�ڶ�����ȡ���ݿ����Ӷ���
		 conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_exam","root","root");
	}
    //�ر��������ݿ���ض���
	protected void closeMysql() {
		if(conn!=null) {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(stmt!=null) {
			try {
				stmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(pstmt!=null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(rs!=null) {
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}

