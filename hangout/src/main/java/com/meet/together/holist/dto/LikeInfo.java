package com.meet.together.holist.dto;

public class LikeInfo {
	private int likeNum;
	private int userNum;
	private int hangoutNum;
	private String hangoutName;
	
	
	public int getLikeNum() {
		return likeNum;
	}
	public void setLikeNum(int likeNum) {
		this.likeNum = likeNum;
	}
	public int getUserNum() {
		return userNum;
	}
	public void setUserNum(int userNum) {
		this.userNum = userNum;
	}
	public int getHangoutNum() {
		return hangoutNum;
	}
	public void setHangoutNum(int hangoutNum) {
		this.hangoutNum = hangoutNum;
	}
	public String getHangoutName() {
		return hangoutName;
	}
	public void setHangoutName(String hangoutName) {
		this.hangoutName = hangoutName;
	}
	@Override
	public String toString() {
		return "LikeInfo [likeNum=" + likeNum + ", userNum=" + userNum + ", hangoutNum=" + hangoutNum + ", hangoutName="
				+ hangoutName + "]";
	}
	
	

}
