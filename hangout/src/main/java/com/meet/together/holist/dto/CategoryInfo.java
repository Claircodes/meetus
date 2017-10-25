package com.meet.together.holist.dto;

import org.springframework.stereotype.Component;

@Component
public class CategoryInfo 
{
	private int categoryNum;
	private String categoryName;
	public int getCategoryNum() {
		return categoryNum;
	}
	public void setCategoryNum(int categoryNum) {
		this.categoryNum = categoryNum;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	@Override
	public String toString() {
		return "CategoryInfo [categoryNum=" + categoryNum + ", categoryName=" + categoryName + "]";
	}
	
}
