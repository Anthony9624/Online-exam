package com.sykjxy.result.servce;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.sykjxy.entity.Sturesult;
import com.sykjxy.result.dao.ResDaoImpl;

public class ResServceImpl implements ResServce {
	private ResDaoImpl rdi = new ResDaoImpl();
	@Override
	public List<Sturesult> selectAllRes() {
		String sql = "select *from tb_sturesult  ORDER BY joinTime DESC";
		List<Sturesult> list  = rdi.query(sql);
		return list;
	}
	@Override
	public List<Sturesult> selectSomeRes(int  voucher,String keywordn) {
		List<Sturesult> list = new ArrayList<Sturesult>();
		if(voucher==1) {
			String sql ="select *from tb_sturesult where stuId like "+"'%"+keywordn+"%'"+" ORDER BY joinTime DESC";
			list= rdi.query(sql);
		}else if(voucher==2) {
			String sql ="select *from tb_sturesult where whichLesson like "+"'%"+keywordn+"%'"+" ORDER BY joinTime DESC";
			list= rdi.query(sql);
		}
		
		return list;
	}
	@Override
	public int save(Sturesult res) {
		int m =0;
		String sql="insert into tb_sturesult(stuId,whichLesson,resSingle,resMore,"
				+ "resTotal,joinTime) value(?,?,?,?,?,?)";
		m =  rdi.update(sql, res.getStuId(),res.getWhichLesson(),res.getResSingle(),
				res.getResMore(),res.getResTotal(),new Date());
		return m;
	}
	@Override
	public List<Sturesult> selectStuRes(String stuId) {
		String sql="select * from tb_sturesult where stuId=?";
		List<Sturesult> list = rdi.query(sql, stuId);
		return list;
	}
	@Override
	public boolean determineStu(String stuId, String taoName) {
		String sql = "select * from tb_sturesult where stuId=? and whichLesson=?";
		List<Sturesult> list  = rdi.query(sql, stuId,taoName);
		int m = list.size();
		return m==1;
	}
		
}
