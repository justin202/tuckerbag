package com.cbi.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.cbi.dao.UserDAO;
import com.cbi.entity.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {
	
	private static final String SECCESS = "success";
	private static final String ERROR = "error";
	
	private User u;
	
	public User getU() {
		return u;
	}

	public void setU(User u) {
		this.u = u;
	}

	public String register(){
		ActionContext actionContext = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) actionContext.get(ServletActionContext.HTTP_REQUEST);
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String gender = request.getParameter("gender");
		String street = request.getParameter("street");
		String suburb = request.getParameter("suburb");
		String postCode = request.getParameter("postCode");
		
		User u = new User(0, email, password, "Gardener", firstName, lastName, 
				gender, street, suburb, postCode);
		UserDAO udao = new UserDAO();
		
		if(udao.register(u))
			return "login";
		else
			return ERROR;
	}
	
	public String login(){
		ActionContext actionContext = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) actionContext.get(ServletActionContext.HTTP_REQUEST);
		Map<String, Object> session = actionContext.getSession();
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		UserDAO udao = new UserDAO();
		u = udao.login(email, password);
		if(u != null){
			session.put("user", u);
			return SUCCESS;
		}
		else 
			return ERROR;
	}
	
	public String logout(){
		ActionContext actionContext = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) actionContext.get(ServletActionContext.HTTP_REQUEST);
		Map<String, Object> session = actionContext.getSession();
		
		session.remove("user");
		
		return SUCCESS;
	}
	
}
