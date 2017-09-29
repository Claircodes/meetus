package com.meet.together.list.dto;

public class ListInfo 
{
	private int hangoutNum;
	private int hangoutCreator;
	private String hangoutName;
	private String hangoutContent;
	private String hangoutArea;
	private String hangoutOpenDate;
	private String hangoutCloseDate;
	private String hangoutDate;
	private String hangoutCategory;
	private String hangoutTag;
	public int getHangoutNum() {
		return hangoutNum;
	}
	public void setHangoutNum(int hangoutNum) {
		this.hangoutNum = hangoutNum;
	}
	public int getHangoutCreator() {
		return hangoutCreator;
	}
	public void setHangoutCreator(int hangoutCreator) {
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
	public String getHangoutOpenDate() {
		return hangoutOpenDate;
	}
	public void setHangoutOpenDate(String hangoutOpenDate) {
		this.hangoutOpenDate = hangoutOpenDate;
	}
	public String getHangoutCloseDate() {
		return hangoutCloseDate;
	}
	public void setHangoutCloseDate(String hangoutCloseDate) {
		this.hangoutCloseDate = hangoutCloseDate;
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
	@Override
	public String toString() {
		return "ListInfo [hangoutNum=" + hangoutNum + ", hangoutCreator=" + hangoutCreator + ", hangoutName="
				+ hangoutName + ", hangoutContent=" + hangoutContent + ", hangoutArea=" + hangoutArea
				+ ", hangoutOpenDate=" + hangoutOpenDate + ", hangoutCloseDate=" + hangoutCloseDate + ", hangoutDate="
				+ hangoutDate + ", hangoutCategory=" + hangoutCategory + ", hangoutTag=" + hangoutTag + "]";
	}
	
}
