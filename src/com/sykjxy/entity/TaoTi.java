package com.sykjxy.entity;

import java.util.Date;

public class TaoTi {
	private int id;//����id
	private String name;//��������
	private int lessonId; // �γ�id
	private String lessonName; // �γ�����
	private Date jointime; // ����ʱ��
	
	public TaoTi(int id, String name, int lessonId, String lessonName, Date jointime) {
		super();
		this.id = id;
		this.name = name;
		this.lessonId = lessonId;
		this.lessonName = lessonName;
		this.jointime = jointime;
	}
	public String getLessonName() {
		return lessonName;
	}
	public void setLessonName(String lessonName) {
		this.lessonName = lessonName;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getLessonId() {
		return lessonId;
	}
	public void setLessonId(int lessonId) {
		this.lessonId = lessonId;
	}
	public Date getJointime() {
		return jointime;
	}
	public void setJointime(Date jointime) {
		this.jointime = jointime;
	}
	public TaoTi() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "TaoTi [id=" + id + ", name=" + name + ", lessonId=" + lessonId + ", lessonName=" + lessonName
				+ ", jointime=" + jointime + "]";
	}
	
}
