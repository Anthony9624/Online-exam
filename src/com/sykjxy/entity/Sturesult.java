package com.sykjxy.entity;

import java.util.Date;

public class Sturesult {
	 private int id; //�ñ�����
	 private String stuId; // ѧ��ID
	 private String whichLesson; // ��Ŀ
	 private int resSingle;// ��ѡ��ķ���
	 private int resMore;// ��ѡ�����
	 private int resTotal; // �ܷ�
	 private Date jointime;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getStuId() {
		return stuId;
	}
	public void setStuId(String stuId) {
		this.stuId = stuId;
	}
	public String getWhichLesson() {
		return whichLesson;
	}
	public void setWhichLesson(String whichLesson) {
		this.whichLesson = whichLesson;
	}
	public int getResSingle() {
		return resSingle;
	}
	public void setResSingle(int resSingle) {
		this.resSingle = resSingle;
	}
	public int getResMore() {
		return resMore;
	}
	public void setResMore(int resMore) {
		this.resMore = resMore;
	}
	public int getResTotal() {
		return resTotal;
	}
	public void setResTotal(int resTotal) {
		this.resTotal = resTotal;
	}
	public Date getJointime() {
		return jointime;
	}
	public void setJointime(Date jointime) {
		this.jointime = jointime;
	}
	public Sturesult(int id, String stuId, String whichLesson, int resSingle, int resMore, int resTotal,
			Date jointime) {
		super();
		this.id = id;
		this.stuId = stuId;
		this.whichLesson = whichLesson;
		this.resSingle = resSingle;
		this.resMore = resMore;
		this.resTotal = resTotal;
		this.jointime = jointime;
	}
	public Sturesult() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Sturesult [id=" + id + ", stuId=" + stuId + ", whichLesson=" + whichLesson + ", resSingle=" + resSingle
				+ ", resMore=" + resMore + ", resTotal=" + resTotal + ", jointime=" + jointime + "]";
	}
	 

}
