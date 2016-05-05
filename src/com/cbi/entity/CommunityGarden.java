package com.cbi.entity;

public class CommunityGarden {
	
	private int commID;
	private String commName;
	private String address;
	private String suburb;
	private String postCode;
	private String timings;
	private String latitude;
	private String longitude;
	
	public CommunityGarden() {
		super();
	}

	public CommunityGarden(int commID, String commName, String address,
			String suburb, String postCode, String timings, String latitude,
			String longitude) {
		this.commID = commID;
		this.commName = commName;
		this.address = address;
		this.suburb = suburb;
		this.postCode = postCode;
		this.timings = timings;
		this.latitude = latitude;
		this.longitude = longitude;
	}

	public int getCommID() {
		return commID;
	}

	public void setCommID(int commID) {
		this.commID = commID;
	}

	public String getCommName() {
		return commName;
	}

	public void setCommName(String commName) {
		this.commName = commName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getSuburb() {
		return suburb;
	}

	public void setSuburb(String suburb) {
		this.suburb = suburb;
	}

	public String getPostCode() {
		return postCode;
	}

	public void setPostCode(String postCode) {
		this.postCode = postCode;
	}

	public String getTimings() {
		return timings;
	}

	public void setTimings(String timings) {
		this.timings = timings;
	}

	public String getLatitude() {
		return latitude;
	}

	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}

	public String getLongitude() {
		return longitude;
	}

	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}

	@Override
	public String toString() {
		return this.getCommID() + "\t" + this.getCommName() + "\t" + this.getAddress()
		 + "\t" + this.getSuburb() + "\t" + this.getPostCode() + "\t" + this.getTimings()
		 + "\t" + this.getLatitude() + "\t" + this.getLongitude();
	}

}
