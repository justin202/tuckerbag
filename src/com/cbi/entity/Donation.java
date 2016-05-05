package com.cbi.entity;

/**
 * the Donation form
 * @author Hu
 *
 */
public class Donation {
	
	private int donationID;
	private String fullName;
	private String commGardenName;
	private String email;
	private String street;
	private String suburb;
	private String postCode;
	private String product;
	private double amount;
	private String unit;
	private String date;
	private String timeRange;
	// donation form status
	private String status;
	
	public Donation() {
	}

	public Donation(int donationID, String fullName, String commGardenName,
			String email, String street, String suburb, String postCode,
			String product, double amount, String unit, String date,
			String timeRange, String status) {
		this.donationID = donationID;
		this.fullName = fullName;
		this.commGardenName = commGardenName;
		this.email = email;
		this.street = street;
		this.suburb = suburb;
		this.postCode = postCode;
		this.product = product;
		this.amount = amount;
		this.unit = unit;
		this.date = date;
		this.timeRange = timeRange;
		this.status = status;
	}

	public int getDonationID() {
		return donationID;
	}

	public void setDonationID(int donationID) {
		this.donationID = donationID;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getCommGardenName() {
		return commGardenName;
	}

	public void setCommGardenName(String commGardenName) {
		this.commGardenName = commGardenName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
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

	public String getProduct() {
		return product;
	}

	public void setProduct(String product) {
		this.product = product;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getTimeRange() {
		return timeRange;
	}

	public void setTimeRange(String timeRange) {
		this.timeRange = timeRange;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return this.getDonationID() + "\t" + this.getFullName() + "\t" + this.getCommGardenName()
				 + "\t" + this.getCommGardenName()  + "\t" + this.getEmail()
				 + "\t" + this.getStreet() + "\t" + this.getSuburb()
				 + "\t" + this.getPostCode() + "\t" + this.getProduct()
				 + "\t" + this.getAmount() + "\t" + this.getUnit()
				 + "\t" + this.getDate() + "\t" + this.getTimeRange()
				 + "\t" + this.getStatus();
	}

}
