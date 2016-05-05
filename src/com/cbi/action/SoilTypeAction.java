package com.cbi.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.cbi.dao.SoilTypeDAO;
import com.cbi.entity.SoilType;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class SoilTypeAction extends ActionSupport {
	
	private static final String SECCESS = "success";
	private static final String ERROR = "error";
	
	private ArrayList<SoilType> stlist;
	private SoilType st;

	public ArrayList<SoilType> getStlist() {
		return stlist;
	}

	public void setStlist(ArrayList<SoilType> stlist) {
		this.stlist = stlist;
	}

	public SoilType getSt() {
		return st;
	}

	public void setSt(SoilType st) {
		this.st = st;
	}

	public String getAllSoilType() throws Exception {
		SoilTypeDAO stdao = new SoilTypeDAO();
		stlist = (ArrayList<SoilType>) stdao.findAllSoilType();
		return SUCCESS;
	}
	
	public String getSoilTypeByID(){
		ActionContext actionContext = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) actionContext.get(ServletActionContext.HTTP_REQUEST);
		int id = Integer.parseInt(request.getParameter("id"));
		SoilTypeDAO stdao = new SoilTypeDAO();
		st = stdao.findSoilTypeByID(id);
//		if(pest == null)
//			return ERROR;
//		else
			return "soiltype";
//			return "test";
	}
	
}
