package com.meet.together.list.dto;

public class ListInfo 
{
	private int liNum;
	private String liCity;
	private String liKateGorie;
	private String liTitle;
	private String liContent;
	private String liMeetTime;
	private String creUser;
	
	public int getLiNum() {
		return liNum;
	}
	public void setLiNum(int liNum) {
		this.liNum = liNum;
	}
	public String getLiCity() {
		return liCity;
	}
	public void setLiCity(String liCity) {
		this.liCity = liCity;
	}
	public String getLiKateGorie() {
		return liKateGorie;
	}
	public void setLiKateGorie(String liKateGorie) {
		this.liKateGorie = liKateGorie;
	}
	public String getLiTitle() {
		return liTitle;
	}
	public void setLiTitle(String liTitle) {
		this.liTitle = liTitle;
	}
	public String getLiContent() {
		return liContent;
	}
	public void setLiContent(String liContent) {
		this.liContent = liContent;
	}
	public String getLiMeetTime() {
		return liMeetTime;
	}
	public void setLiMeetTime(String liMeetTime) {
		this.liMeetTime = liMeetTime;
	}
	public String getCreUser() {
		return creUser;
	}
	public void setCreUser(String creUser) {
		this.creUser = creUser;
	}
	@Override
	public String toString() {
		return "ListInfo [liNum=" + liNum + ", liCity=" + liCity + ", liKateGorie=" + liKateGorie + ", liTitle="
				+ liTitle + ", liContent=" + liContent + ", liMeetTime=" + liMeetTime + ", creUser=" + creUser + "]";
	}
	
}
