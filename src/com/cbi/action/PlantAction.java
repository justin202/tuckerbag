package com.cbi.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.cbi.dao.PestDAO;
import com.cbi.dao.PlantsGuideDAO;
import com.cbi.dao.SoilTypeDAO;
import com.cbi.entity.Pest;
import com.cbi.entity.PlantsGuide;
import com.cbi.entity.SoilType;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class PlantAction extends ActionSupport {
	
	private static final String SECCESS = "success";
	private static final String ERROR = "error";
	
	private ArrayList<PlantsGuide> plantlist;
	private PlantsGuide plant;
	private String parameter;
	private SoilType plantSoilType;
	private ArrayList<Pest> plantPests;

	public ArrayList<PlantsGuide> getPlantlist() {
		return plantlist;
	}

	public void setPlantlist(ArrayList<PlantsGuide> plantlist) {
		this.plantlist = plantlist;
	}

	public PlantsGuide getPlant() {
		return plant;
	}

	public void setPlant(PlantsGuide plant) {
		this.plant = plant;
	}

	public String getParameter() {
		return parameter;
	}

	public void setParameter(String parameter) {
		this.parameter = parameter;
	}

	public SoilType getPlantSoilType() {
		return plantSoilType;
	}

	public void setPlantSoilType(SoilType plantSoilType) {
		this.plantSoilType = plantSoilType;
	}

	public ArrayList<Pest> getPlantPests() {
		return plantPests;
	}

	public void setPlantPests(ArrayList<Pest> plantPests) {
		this.plantPests = plantPests;
	}

	public String getAllPlants() throws Exception {
		PlantsGuideDAO plantsdao = new PlantsGuideDAO();
		plantlist = (ArrayList<PlantsGuide>) plantsdao.findAllPlantsGuide();
		return SUCCESS;
	}
	
	public String getPlantByID(){
		ActionContext actionContext = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) actionContext.get(ServletActionContext.HTTP_REQUEST);
		int id = Integer.parseInt(request.getParameter("id"));
		PlantsGuideDAO plantsdao = new PlantsGuideDAO();
		plant = plantsdao.findPlantsGuideByID(id);
		
		// find the soil of the plant
		SoilTypeDAO sdao = new SoilTypeDAO();
		plantSoilType = sdao.findSoilTypeByName(plant.getRelatedSoilType());
		//find the pests of the plants
		PestDAO pdao = new PestDAO();
		plantPests = new ArrayList<Pest>();
		String[] pests = plant.getPestDesease().split(",");
		for(String s : pests){
			Pest p = pdao.findPestByName(s);
			if(p != null)
				plantPests.add(pdao.findPestByName(s));
		}
		
//		if(pest == null)
//			return ERROR;
//		else
			return "plant";
//			return "test";
	}
	
	public String getPlantByName(){
		ActionContext actionContext = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) actionContext.get(ServletActionContext.HTTP_REQUEST);
		parameter = request.getParameter("sPara");
		
		PlantsGuideDAO plantsdao = new PlantsGuideDAO();

		if(parameter.length() == 0)
			plantlist = (ArrayList<PlantsGuide>) plantsdao.findAllPlantsGuide();
		else
			plantlist = (ArrayList<PlantsGuide>) plantsdao.findPlantsGuideByName(parameter);
		
		return SUCCESS;
	}
	
}
