package com.cbi.entity;

/**
 * the user of tucker, one kind of users is Gardener
 * and another one is volunteer group
 * 
 * @author Hu
 *
 */
public class User {
	
	private int userID;
	private String email;
	private String password;
	private String userType;
	private String firstName;
	private String lastName;
	private String gender;
	private String street;
	private String suburb;
	private String postCode;
	
	public User() {
	}

	public User(int userID, String email, String password, String userType,
			String firstName, String lastName, String gender, String street,
			String suburb, String postCode) {
		this.userID = userID;
		this.email = email;
		this.password = password;
		this.userType = userType;
		this.firstName = firstName;
		this.lastName = lastName;
		this.gender = gender;
		this.street = street;
		this.suburb = suburb;
		this.postCode = postCode;
	}

	public int getUserID() {
		return userID;
	}

	public void setUserID(int userID) {
		this.userID = userID;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
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

	@Override
	public String toString() {
		return this.getUserID() + "\t" + this.getEmail() + "\t" + this.getPassword() 
				 + "\t" + this.getFirstName() + "\t" + this.getLastName()
				 + "\t" + this.getUserType()
				 + "\t" + this.getGender() + "\t" + this.getStreet()
				 + "\t" + this.getSuburb() + "\t" + this.getPostCode();
	}
	
}
