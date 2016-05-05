package com.cbi.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.cbi.dao.PestDAO;
import com.cbi.entity.Pest;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class PestAction extends ActionSupport {
	
	private static final String SECCESS = "success";
	private static final String ERROR = "error";
	
	private ArrayList<Pest> plist;
	private Pest pest;

	public ArrayList<Pest> getPlist() {
		return plist;
	}

	public void setPlist(ArrayList<Pest> plist) {
		this.plist = plist;
	}

	public Pest getPest() {
		return pest;
	}

	public void setPest(Pest pest) {
		this.pest = pest;
	}

	public String getAllPest() throws Exception {
		PestDAO pdao = new PestDAO();
		plist = (ArrayList<Pest>) pdao.findAllPest();
		return SUCCESS;
	}
	
	public String getPestByID(){
		ActionContext actionContext = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) actionContext.get(ServletActionContext.HTTP_REQUEST);
		int id = Integer.parseInt(request.getParameter("id"));
		PestDAO pdao = new PestDAO();
		pest = pdao.findPestByID(id);
//		if(pest == null)
//			return ERROR;
//		else
			return "pest";
//			return "test";
	}
	
}
