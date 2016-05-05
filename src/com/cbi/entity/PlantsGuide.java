package com.cbi.entity;

public class PlantsGuide {
	
	private int plantID;
	private String plantName;
	private String soilType;
	private String position;
	private String frostTolerant;
	private String feeding;
	private String sowAndPlant;
	private String notes;
	private String harvesting;
	private String spacing;
	private String season;
	private String relatedSoilType;
	private String pestDesease;
	private String imagePath;
	
	public PlantsGuide() {
		super();
	}

	public PlantsGuide(int plantID, String plantName, String soilType,
			String position, String frostTolerant, String feeding,
			String sowAndPlant, String notes, String harvesting,
			String spacing, String season, String relatedSoilType,
			String pestDesease, String imagePath) {
		this.plantID = plantID;
		this.plantName = plantName;
		this.soilType = soilType;
		this.position = position;
		this.frostTolerant = frostTolerant;
		this.feeding = feeding;
		this.sowAndPlant = sowAndPlant;
		this.notes = notes;
		this.harvesting = harvesting;
		this.spacing = spacing;
		this.season = season;
		this.relatedSoilType = relatedSoilType;
		this.pestDesease = pestDesease;
		this.imagePath = imagePath;
	}

	public int getPlantID() {
		return plantID;
	}

	public void setPlantID(int plantID) {
		this.plantID = plantID;
	}

	public String getPlantName() {
		return plantName;
	}

	public void setPlantName(String plantName) {
		this.plantName = plantName;
	}

	public String getSoilType() {
		return soilType;
	}

	public void setSoilType(String soilType) {
		this.soilType = soilType;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getFrostTolerant() {
		return frostTolerant;
	}

	public void setFrostTolerant(String frostTolerant) {
		this.frostTolerant = frostTolerant;
	}

	public String getFeeding() {
		return feeding;
	}

	public void setFeeding(String feeding) {
		this.feeding = feeding;
	}

	public String getSowAndPlant() {
		return sowAndPlant;
	}

	public void setSowAndPlant(String sowAndPlant) {
		this.sowAndPlant = sowAndPlant;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public String getHarvesting() {
		return harvesting;
	}

	public void setHarvesting(String harvesting) {
		this.harvesting = harvesting;
	}

	public String getSpacing() {
		return spacing;
	}

	public void setSpacing(String spacing) {
		this.spacing = spacing;
	}

	public String getSeason() {
		return season;
	}

	public void setSeason(String season) {
		this.season = season;
	}

	public String getRelatedSoilType() {
		return relatedSoilType;
	}

	public void setRelatedSoilType(String relatedSoilType) {
		this.relatedSoilType = relatedSoilType;
	}

	public String getPestDesease() {
		return pestDesease;
	}

	public void setPestDesease(String pestDesease) {
		this.pestDesease = pestDesease;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	@Override
	public String toString() {
		return this.plantID + "\t" + this.plantName + "\t" + this.soilType + "\t" + this.position 
		+ "\t" + this.frostTolerant + "\t" + this.feeding + "\t" + this.sowAndPlant + "\t" + this.notes 
		+ "\t" + this.harvesting + "\t" + this.season;
	}

}
