package com.meet.together.list.dto;

public class Place {
	
	private String placeName;
	private String placeId;
	private String placeAddress;

	public String getPlaceName() {
		return placeName;
	}

	public void setPlaceName(String placeName) {
		this.placeName = placeName;
	}

	public String getPlaceId() {
		return placeId;
	}

	public void setPlaceId(String placeId) {
		this.placeId = placeId;
	}

	public String getPlaceAddress() {
		return placeAddress;
	}

	public void setPlaceAddress(String placeAddress) {
		this.placeAddress = placeAddress;
	}
	
	@Override
	public String toString() {
		return "Place [placeName=" + placeName + ", placeId=" + placeId + ", placeAddress=" + placeAddress + "]";
	}

}
