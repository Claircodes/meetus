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
				+ hangoutDate + ", hangoutCategory=" + hangoutCategory + ", hangoutTag=" + hangoutTag + "]";
	}

	
}
