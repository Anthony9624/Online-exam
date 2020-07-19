package com.sykjxy.entity;

import java.util.Arrays;
import java.util.Date;
public class Student  {
	private String ID; //ѧ��׼��֤��
	private String name;// ����
	private String pwd;//����
	private String sex;//�Ա�
	private Date joinTime;//ʱ��
	private String question;//����
	private String answer;//��
	private String profession;//רҵ
	public String getProfession() {
		return profession;
	}


	public void setProfession(String profession) {
		this.profession = profession;
	}


	private String cardNo;// ���֤��
	private String[] delIdArray=new String[0];// ɾ�����ѧ���ĵ�id����
	
	
	public String getID() {
		return ID;
	}


	public void setID(String ID) {
		this.ID = ID;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getPwd() {
		return pwd;
	}


	public void setPwd(String pwd) {
		this.pwd = pwd;
	}


	public String getSex() {
		return sex;
	}


	public void setSex(String sex) {
		this.sex = sex;
	}


	public Date getJoinTime() {
		return joinTime;
	}


	public void setJoinTime(Date joinTime) {
		this.joinTime = joinTime;
	}


	public String getQuestion() {
		return question;
	}


	public void setQuestion(String question) {
		this.question = question;
	}


	public String getAnswer() {
		return answer;
	}


	public void setAnswer(String answer) {
		this.answer = answer;
	}


	public String getCardNo() {
		return cardNo;
	}


	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}


	public Student(String iD, String name, String pwd, String sex, Date joinTime, String question, String answer,
			String profession, String cardNo, String[] delIdArray) {
		super();
		ID = iD;
		this.name = name;
		this.pwd = pwd;
		this.sex = sex;
		this.joinTime = joinTime;
		this.question = question;
		this.answer = answer;
		this.profession = profession;
		this.cardNo = cardNo;
		this.delIdArray = delIdArray;
	}


	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}


	public String[] getDelIdArray() {
		return delIdArray;
	}


	public void setDelIdArray(String[] delIdArray) {
		this.delIdArray = delIdArray;
	}

	
	@Override
	public String toString() {
		return "Student [ID=" + ID + ", name=" + name + ", pwd=" + pwd + ", sex=" + sex + ", joinTime=" + joinTime
				+ ", question=" + question + ", answer=" + answer + ", cardNo=" + cardNo + ", delIdArray="
				+ Arrays.toString(delIdArray) + "]";
	}
	
	
	
	
}
