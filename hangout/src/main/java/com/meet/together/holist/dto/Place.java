package com.meet.together.holist.dto;

import org.springframework.stereotype.Component;

@Component
public class Place {
	private String placeAddress;


	public String getPlaceAddress() {
		return placeAddress;
	}

	public void setPlaceAddress(String placeAddress) {
		this.placeAddress = placeAddress;
	}

	@Override
	public String toString() {
		return "Place [placeAddress=" + placeAddress + "]";
	}


}
