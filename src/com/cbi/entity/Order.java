package com.cbi.entity;

public class Order {
	
	private int orderID;
	private int donationID;
	private int volunteerID;
	private String status;
	
	public Order() {
	}
	
	public Order(int orderID, int donationID, int volunteerID, String status) {
		this.orderID = orderID;
		this.donationID = donationID;
		this.volunteerID = volunteerID;
		this.status = status;
	}

	public int getOrderID() {
		return orderID;
	}

	public void setOrderID(int orderID) {
		this.orderID = orderID;
	}

	public int getDonationID() {
		return donationID;
	}

	public void setDonationID(int donationID) {
		this.donationID = donationID;
	}

	public int getVolunteerID() {
		return volunteerID;
	}

	public void setVolunteerID(int volunteerID) {
		this.volunteerID = volunteerID;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return this.getOrderID() + "\t" + this.getDonationID() + "\t" + this.getVolunteerID()
				+ "\t" + this.getStatus();
	}

}
