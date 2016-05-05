package com.cbi.entity;

public class Pest {
	private int pestID;
	private String pestName;
	private String hostPlants;
	private String whereFound;
	private String description;
	private String damage;
	private String perventingProblems;
	private String tips;
	private String imagePath;
	
	public Pest() {
		super();
	}
	
	public Pest(int pestID, String pestName, String hostPlants,
			String whereFound, String description, String damage,
			String perventingProblems, String tips, String imagePath) {
		super();
		this.pestID = pestID;
		this.pestName = pestName;
		this.hostPlants = hostPlants;
		this.whereFound = whereFound;
		this.description = description;
		this.damage = damage;
		this.perventingProblems = perventingProblems;
		this.tips = tips;
		this.imagePath = imagePath;
	}

	public int getPestID() {
		return pestID;
	}

	public void setPestID(int pestID) {
		this.pestID = pestID;
	}

	public String getPestName() {
		return pestName;
	}

	public void setPestName(String pestName) {
		this.pestName = pestName;
	}

	public String getHostPlants() {
		return hostPlants;
	}

	public void setHostPlants(String hostPlants) {
		this.hostPlants = hostPlants;
	}

	public String getWhereFound() {
		return whereFound;
	}

	public void setWhereFound(String whereFound) {
		this.whereFound = whereFound;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getDamage() {
		return damage;
	}

	public void setDamage(String damage) {
		this.damage = damage;
	}

	public String getPerventingProblems() {
		return perventingProblems;
	}

	public void setPerventingProblems(String perventingProblems) {
		this.perventingProblems = perventingProblems;
	}

	public String getTips() {
		return tips;
	}

	public void setTips(String tips) {
		this.tips = tips;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	@Override
	public String toString() {
		return this.getPestID() + "\t" + this.getPestName() + "\t" + this.hostPlants + "\t" 
		+ this.whereFound + "\t" + this.description + "\t" + this.damage + "\t" + this.perventingProblems 
		+ "\t" + this.tips;
	}

}
