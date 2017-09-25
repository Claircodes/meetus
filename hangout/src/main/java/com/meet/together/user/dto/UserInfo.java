package com.meet.together.user.dto;

import org.springframework.stereotype.Component;

@Component
public class UserInfo {
	private int userNum;
	private String userId;
	private String userPwd;
	private String userName;
	private String userEmail;
	private String userPhone;
	private String userGender;
	private String userCountry;
	public int getUserNum() {
		return userNum;
	}
	public void setUserNum(int userNum) {
		this.userNum = userNum;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserGender() {
		return userGender;
	}
	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}
	public String getUserCountry() {
		return userCountry;
	}
	public void setUserCountry(String userCountry) {
		this.userCountry = userCountry;
	}
	@Override
	public String toString() {
		return "UserInfo [userNum=" + userNum + ", userId=" + userId + ", userPwd=" + userPwd + ", userName=" + userName
				+ ", userEmail=" + userEmail + ", userPhone=" + userPhone + ", userGender=" + userGender
				+ ", userCountry=" + userCountry + "]";
	}

}
