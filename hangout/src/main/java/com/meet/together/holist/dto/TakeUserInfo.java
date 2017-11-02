package com.meet.together.holist.dto;

import org.springframework.stereotype.Component;

@Component
public class TakeUserInfo 
{
	private int hangoutNum;
	private int userNum;
	private int tuNum;
	private int count;
	
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getHangoutNum() {
		return hangoutNum;
	}
	public void setHangoutNum(int hangoutNum) {
		this.hangoutNum = hangoutNum;
	}
	public int getUserNum() {
		return userNum;
	}
	public void setUserNum(int userNum) {
		this.userNum = userNum;
	}
	public int getTuNum() {
		return tuNum;
	}
	public void setTuNum(int tuNum) {
		this.tuNum = tuNum;
	}
	@Override
	public String toString() {
		return "TakeUserInfo [hangoutNum=" + hangoutNum + ", userNum=" + userNum + ", tuNum=" + tuNum + ", count="
				+ count + "]";
	}

	
}
