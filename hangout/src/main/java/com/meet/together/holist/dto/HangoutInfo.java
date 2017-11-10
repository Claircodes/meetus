package com.meet.together.holist.dto;

public class HangoutInfo {

	private int hangoutNum;
	private String hangoutName;
	private String hangoutContent;
	private String hangoutArea;
	private String hangoutAddress;
	private String hangoutLat;
	private String hangoutLng;
	private String hangoutOpendate;
	private String hangoutClosedate;
	private String hangoutDate;
	private String hangoutCategory;
	private String hangoutTag;

	private String userNum;
	private String userId;
	private String userPwd;
	private String userName;
	private String userEmail;
	private String userPhone;
	private String userGender;
	private String userCountry;

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

	public String getHangoutContent() {
		return hangoutContent;
	}

	public void setHangoutContent(String hangoutContent) {
		this.hangoutContent = hangoutContent;
	}

	public String getHangoutArea() {
		return hangoutArea;
	}

	public void setHangoutArea(String hangoutArea) {
		this.hangoutArea = hangoutArea;
	}

	public String getHangoutAddress() {
		return hangoutAddress;
	}

	public void setHangoutAddress(String hangoutAddress) {
		this.hangoutAddress = hangoutAddress;
	}

	public String getHangoutLat() {
		return hangoutLat;
	}

	public void setHangoutLat(String hangoutLat) {
		this.hangoutLat = hangoutLat;
	}

	public String getHangoutLng() {
		return hangoutLng;
	}

	public void setHangoutLng(String hangoutLng) {
		this.hangoutLng = hangoutLng;
	}

	public String getHangoutOpendate() {
		return hangoutOpendate;
	}

	public void setHangoutOpendate(String hangoutOpendate) {
		this.hangoutOpendate = hangoutOpendate;
	}

	public String getHangoutClosedate() {
		return hangoutClosedate;
	}

	public void setHangoutClosedate(String hangoutClosedate) {
		this.hangoutClosedate = hangoutClosedate;
	}

	public String getHangoutDate() {
		return hangoutDate;
	}

	public void setHangoutDate(String hangoutDate) {
		this.hangoutDate = hangoutDate;
	}

	public String getHangoutCategory() {
		return hangoutCategory;
	}

	public void setHangoutCategory(String hangoutCategory) {
		this.hangoutCategory = hangoutCategory;
	}

	public String getHangoutTag() {
		return hangoutTag;
	}

	public void setHangoutTag(String hangoutTag) {
		this.hangoutTag = hangoutTag;
	}

	public String getUserNum() {
		return userNum;
	}

	public void setUserNum(String userNum) {
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
		return "HangoutInfo [hangoutNum=" + hangoutNum + ", hangoutName=" + hangoutName + ", hangoutContent="
				+ hangoutContent + ", hangoutArea=" + hangoutArea + ", hangoutAddress=" + hangoutAddress
				+ ", hangoutLat=" + hangoutLat + ", hangoutLng=" + hangoutLng + ", hangoutOpendate=" + hangoutOpendate
				+ ", hangoutClosedate=" + hangoutClosedate + ", hangoutDate=" + hangoutDate + ", hangoutCategory="
				+ hangoutCategory + ", hangoutTag=" + hangoutTag + ", userNum=" + userNum + ", userId=" + userId
				+ ", userPwd=" + userPwd + ", userName=" + userName + ", userEmail=" + userEmail + ", userPhone="
				+ userPhone + ", userGender=" + userGender + ", userCountry=" + userCountry + "]";
	}

}
