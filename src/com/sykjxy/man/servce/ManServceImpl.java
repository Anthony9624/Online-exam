package com.sykjxy.man.servce;

import java.util.List;

import com.sykjxy.entity.Manager;
import com.sykjxy.man.dao.ManDaoImpl;

public class ManServceImpl implements ManServce {
	private ManDaoImpl mdi = new ManDaoImpl();
	@Override
	public List<Manager> login(String name, String pwd) {
		String sql = "select * from tb_manager where name=? and pwd=?";
		List<Manager> list = mdi.query(sql, name,pwd);
		
		return list;
	}
	@Override
	public List<Manager> query() {
		String sql = "select * from tb_manager";
		List<Manager> lsit = mdi.query(sql);
		return lsit; 
	}
	@Override
	public int save(Manager man) {
		String sql = "insert into tb_manager (name,pwd) values (?,?)";
		int m = mdi.update(sql,man.getName(),man.getPwd());
		return m;
	}
	@Override
	public boolean edit(int id,String pwd) {
		String sql = "update tb_manager set pwd=? where id=? ";
		int m = mdi.update(sql, pwd,id);
		return m==1;
	}
	@Override
	public boolean remove(int id) {
		String sql=" delete from tb_manager where id=?";
		int m = mdi.update(sql, id);
		return m==1;
	}
	@Override
	public Manager getManager(int id) {
		String sql="select * from tb_manager where id=?";
		Manager man = mdi.query(sql, id).get(0);
		return man;
	}

}
