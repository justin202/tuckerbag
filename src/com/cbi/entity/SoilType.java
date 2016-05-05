package com.cbi.entity;

public class SoilType {
	
	private int typeID;
	private String name;
	private String description;
	private String imagePath;
	
	public SoilType() {
		super();
	}

	public SoilType(int typeID, String name, String description,
			String imagePath) {
		this.typeID = typeID;
		this.name = name;
		this.description = description;
		this.imagePath = imagePath;
	}

	public int getTypeID() {
		return typeID;
	}

	public void setTypeID(int typeID) {
		this.typeID = typeID;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	@Override
	public String toString() {
		return this.typeID + "\t" + this.name + "\t" + this.description;
	}
	
}
