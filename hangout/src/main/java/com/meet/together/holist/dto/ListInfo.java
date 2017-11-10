package com.meet.together.holist.dto;

import org.springframework.stereotype.Component;

@Component
public class ListInfo 
{
	private int hangoutNum;
	private String hangoutCreator;
	private String hangoutName;
	private String hangoutContent;
	private String hangoutArea;
	private String hangoutOpendate;
	private String hangoutClosedate;
	private String hangoutDate;
	private String hangoutCategory;
	private String hangoutTag;
	private String hangoutAddress1;
	private String hangoutLat;
	private String hangoutLng;
	private String hangoutAddress2;

	public String getHangoutAddress1() {
		return hangoutAddress1;
	}
	public void setHangoutAddress1(String hangoutAddress1) {
		this.hangoutAddress1 = hangoutAddress1;
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
	public String getHangoutAddress2() {
		return hangoutAddress2;
	}
	public void setHangoutAddress2(String hangoutAddress2) {
		this.hangoutAddress2 = hangoutAddress2;
	}
	public int getHangoutNum() {
		return hangoutNum;
	}
	public void setHangoutNum(int hangoutNum) {
		this.hangoutNum = hangoutNum;
	}
	public String getHangoutCreator() {
		return hangoutCreator;
	}
	public void setHangoutCreator(String hangoutCreator) {
		this.hangoutCreator = hangoutCreator;
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
	@Override
	public String toString() {
		return "ListInfo [hangoutNum=" + hangoutNum + ", hangoutCreator=" + hangoutCreator + ", hangoutName="
				+ hangoutName + ", hangoutContent=" + hangoutContent + ", hangoutArea=" + hangoutArea
				+ ", hangoutOpendate=" + hangoutOpendate + ", hangoutClosedate=" + hangoutClosedate + ", hangoutDate="
				+ hangoutDate + ", hangoutCategory=" + hangoutCategory + ", hangoutTag=" + hangoutTag
				+ ", hangoutAddress1=" + hangoutAddress1 + ", hangoutLat=" + hangoutLat + ", hangoutLng=" + hangoutLng
				+ ", hangoutAddress2=" + hangoutAddress2 + "]";
	}

	
}
