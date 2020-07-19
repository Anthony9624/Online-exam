package com.sykjxy.entity;

import java.util.Date;

public class Questions {
	private int id;//考试题目id
	private String subject;//考试题目题干
	private String type;//考试题的类型
	private Date joinTime;//添加试题的时间
	private int lessonId;//课程id
	private String lessonName;//课程名称
	private int taoTiId;//套题id
	private String taoTiName;//套题名称
	private String optionA;//选项A
	private String optionB;//选项B
	private String optionC;//选项C
	private String optionD;//选项D
	private String answer;//答案
	private String note;//备注
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Date getJoinTime() {
		return joinTime;
	}
	public void setJoinTime(Date joinTime) {
		this.joinTime = joinTime;
	}
	public int getLessonId() {
		return lessonId;
	}
	public void setLessonId(int lessonId) {
		this.lessonId = lessonId;
	}
	public String getLessonName() {
		return lessonName;
	}
	public void setLessonName(String lessonName) {
		this.lessonName = lessonName;
	}
	public int getTaoTiId() {
		return taoTiId;
	}
	public void setTaoTiId(int taoTiId) {
		this.taoTiId = taoTiId;
	}
	public String getTaoTiName() {
		return taoTiName;
	}
	public void setTaoTiName(String taoTiName) {
		this.taoTiName = taoTiName;
	}
	public String getOptionA() {
		return optionA;
	}
	public void setOptionA(String optionA) {
		this.optionA = optionA;
	}
	public String getOptionB() {
		return optionB;
	}
	public void setOptionB(String optionB) {
		this.optionB = optionB;
	}
	public String getOptionC() {
		return optionC;
	}
	public void setOptionC(String optionC) {
		this.optionC = optionC;
	}
	public String getOptionD() {
		return optionD;
	}
	public void setOptionD(String optionD) {
		this.optionD = optionD;
	}
	
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	
	public Questions(int id, String subject, String type, Date joinTime, int lessonId, String lessonName, int taoTiId,
			String taoTiName, String optionA, String optionB, String optionC, String optionD, String answer,
			String note) {
		super();
		this.id = id;
		this.subject = subject;
		this.type = type;
		this.joinTime = joinTime;
		this.lessonId = lessonId;
		this.lessonName = lessonName;
		this.taoTiId = taoTiId;
		this.taoTiName = taoTiName;
		this.optionA = optionA;
		this.optionB = optionB;
		this.optionC = optionC;
		this.optionD = optionD;
		this.answer = answer;
		this.note = note;
	}
	public Questions() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Questions [id=" + id + ", subject=" + subject + ", type=" + type + ", joinTime=" + joinTime
				+ ", lessonId=" + lessonId + ", lessonName=" + lessonName + ", taoTiId=" + taoTiId + ", taoTiName="
				+ taoTiName + ", optionA=" + optionA + ", optionB=" + optionB + ", optionC=" + optionC + ", optionD="
				+ optionD + ", answer=" + answer + ", note=" + note + "]";
	}
	
	
}
