package com.sykjxy.tools;

public class Joint {
	public String jointId(int id) {
		StringBuilder str = new StringBuilder("000000");
		String sid = id+"";
		int aa = sid.length();
		
		return str.replace(6-aa, 6, sid).toString();
	}
}
