package com.cbi.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.cbi.dao.DonationDAO;
import com.cbi.dao.OrderDAO;
import com.cbi.entity.Order;
import com.cbi.entity.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class OrderAction extends ActionSupport {
	
	private static final String SECCESS = "success";
	private static final String ERROR = "error";
	
	private int orderID;
	
	public int getOrderID() {
		return orderID;
	}

	public void setOrderID(int orderID) {
		this.orderID = orderID;
	}

	/**
	 * response to accept
	 * @return
	 * @throws Exception
	 */
	public String generateOrder() throws Exception {
		ActionContext actionContext = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) actionContext.get(ServletActionContext.HTTP_REQUEST);
		Map<String, Object> session = actionContext.getSession();
		
		User user = (User) session.get("user");
		int id = Integer.parseInt(request.getParameter("id"));
		
		// insert order into orderrecord
		Order order = new Order(0, id, user.getUserID(), "Accepted");
		OrderDAO odao = new OrderDAO();
		odao.insertOrderRecord(order);
		orderID = odao.getCurrentID();
		// change the donation status
		DonationDAO ddao = new DonationDAO();
		ddao.changeStatus(id, "Accepted");
		// send email to donor
		
		return SUCCESS;
	}
	
}
