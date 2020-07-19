package com.sykjxy.taoti.servce;

import java.util.Date;
import java.util.List;

import com.sykjxy.entity.TaoTi;
import com.sykjxy.taoti.dao.TaoDaoImpl;

public class TaoServceImpl implements TaoServce {
	private TaoDaoImpl tdi = new TaoDaoImpl();
	@Override
	public List<TaoTi> query() {
		String sql="select tt.ID,tt.NAME,tt.LessonID,tt.JoinTime,le.Name lesName FROM tb_taoti tt left join tb_lesson le on tt.LessonID=le.ID ORDER BY JoinTime DESC";
		List<TaoTi> list = tdi.query(sql);
		return list;
	}
	@Override
	public int save(String Name, int LessonId) {
		int m =0;
		String sql = "insert into tb_taoti (Name,LessonID,JoinTime) value(?,?,?)";
		m = tdi.update(sql, Name,LessonId,new Date());
		return m;
	}
	@Override
	public int edit(int id, String Name, int LessonId) {
		int m=0;
		String sql="update tb_taoti set Name=?,LessonId=? where ID=?";
		m = tdi.update(sql, Name,LessonId,id);
		return m;
	}
	@Override
	public TaoTi getTao(int id) {
		 TaoTi tao = new TaoTi();
		 String sql="select tt.ID,tt.NAME,tt.LessonID,tt.JoinTime,le.Name lesName FROM tb_taoti tt left join tb_lesson le on tt.LessonID=le.ID where tt.ID=? ";
		 tao = tdi.query(sql, id).get(0);
		 return tao;
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
    		String sql = "delete from tb_taoti where ID in(" +id +")";
    		flag = tdi.update(sql);
		}
    	
		return flag;
		}
	@Override
	public String getTaotiName(int id) {
		String sql="select * from tb_taoti where id=?";
		String Name=tdi.selectName(sql,id);
		return Name;
	}
	@Override
	public String getTaoName(int lessonId) {
		String sql ="select * from tb_taoti where lessonID=?";
		String name = tdi.selectName(sql, lessonId);
		return name;
	}
	

}
