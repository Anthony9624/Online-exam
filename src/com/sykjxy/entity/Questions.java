package com.sykjxy.entity;

import java.util.Date;

public class Questions {
	private int id;//������Ŀid
	private String subject;//������Ŀ���
	private String type;//�����������
	private Date joinTime;//��������ʱ��
	private int lessonId;//�γ�id
	private String lessonName;//�γ�����
	private int taoTiId;//����id
	private String taoTiName;//��������
	private String optionA;//ѡ��A
	private String optionB;//ѡ��B
	private String optionC;//ѡ��C
	private String optionD;//ѡ��D
	private String answer;//��
	private String note;//��ע
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
