package com.cbi.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.cbi.dao.CommunityGardenDAO;
import com.cbi.entity.CommunityGarden;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class CommunityGardenAction extends ActionSupport {
	
	private static final String SECCESS = "success";
	private static final String ERROR = "error";
	
	private ArrayList<CommunityGarden> cglist;
	private CommunityGarden cg;
	private String parameter;

	public ArrayList<CommunityGarden> getCglist() {
		return cglist;
	}

	public void setCglist(ArrayList<CommunityGarden> cglist) {
		this.cglist = cglist;
	}

	public CommunityGarden getCg() {
		return cg;
	}

	public void setCg(CommunityGarden cg) {
		this.cg = cg;
	}

	public String getParameter() {
		return parameter;
	}

	public void setParameter(String parameter) {
		this.parameter = parameter;
	}

	public String getAllCommunityGardens() throws Exception {
		CommunityGardenDAO cgdao = new CommunityGardenDAO();
		cglist = (ArrayList<CommunityGarden>) cgdao.findAllCommunityGarden();
		return SUCCESS;
	}
	
	public String getCommunityGardenByID(){
		ActionContext actionContext = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) actionContext.get(ServletActionContext.HTTP_REQUEST);
		int id = Integer.parseInt(request.getParameter("id"));
		CommunityGardenDAO cgdao = new CommunityGardenDAO();
		cg = cgdao.findCommunityGardenByID(id);
//		if(pest == null)
//			return ERROR;
//		else
			return "gardeninfo";
//			return "test";
	}
	
	public String searchCommunityGarden(){
		ActionContext actionContext = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) actionContext.get(ServletActionContext.HTTP_REQUEST);
		parameter = request.getParameter("sPara");
		
		CommunityGardenDAO cgdao = new CommunityGardenDAO();
		
		if(parameter.length() == 0)
			cglist = (ArrayList<CommunityGarden>) cgdao.findAllCommunityGarden();
		else{
			cglist = (ArrayList<CommunityGarden>) cgdao.findCommunityGardenByPostCode(parameter);
			cglist.addAll(cgdao.findCommunityGardenBySuburb(parameter));
		}
		
		return SUCCESS;
	}
	
}
