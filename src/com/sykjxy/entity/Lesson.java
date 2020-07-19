package com.sykjxy.entity;

import java.util.Date;

public class Lesson {
	private int id; //课程id
	private String Name; // 课程名称
	private Date JoinTime; // 课程加入时间
	private String profession; //课程所属专业
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public Date getJoinTime() {
		return JoinTime;
	}
	public void setJoinTime(Date JoinTime) {
		this.JoinTime = JoinTime;
	}
	public String getProfession() {
		return profession;
	}
	public void setProfession(String profession) {
		this.profession = profession;
	}
	public Lesson(int id, String name, Date joinTime, String profession) {
		super();
		this.id = id;
		Name = name;
		JoinTime = joinTime;
		this.profession = profession;
	}
	public Lesson() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Lesson [id=" + id + ", Name=" + Name + ", JoinTime=" + JoinTime + ", profession=" + profession + "]";
	}
	
}
