package com.cbi.action;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.cbi.dao.CommunityGardenDAO;
import com.cbi.dao.DonationDAO;
import com.cbi.dao.OrderDAO;
import com.cbi.dao.PlantsGuideDAO;
import com.cbi.entity.CommunityGarden;
import com.cbi.entity.Donation;
import com.cbi.entity.PlantsGuide;
import com.cbi.entity.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class DonationAction extends ActionSupport {
	
	private static final String SECCESS = "success";
	private static final String ERROR = "error";
	
	private ArrayList<CommunityGarden> cglist;
	private ArrayList<PlantsGuide> plist;
	private ArrayList<Donation> dlist;
	private ArrayList<Donation> odlist;
	
	private Donation d;

	public ArrayList<CommunityGarden> getCglist() {
		return cglist;
	}

	public void setCglist(ArrayList<CommunityGarden> cglist) {
		this.cglist = cglist;
	}

	public ArrayList<PlantsGuide> getPlist() {
		return plist;
	}

	public void setPlist(ArrayList<PlantsGuide> plist) {
		this.plist = plist;
	}

	public Donation getD() {
		return d;
	}

	public void setD(Donation d) {
		this.d = d;
	}

	public ArrayList<Donation> getDlist() {
		return dlist;
	}

	public void setDlist(ArrayList<Donation> dlist) {
		this.dlist = dlist;
	}

	public ArrayList<Donation> getOdlist() {
		return odlist;
	}

	public void setOdlist(ArrayList<Donation> odlist) {
		this.odlist = odlist;
	}

	public String initForm() throws Exception {
		CommunityGardenDAO cgdao = new CommunityGardenDAO();
		cglist = (ArrayList<CommunityGarden>) cgdao.findAllCommunityGarden();
		PlantsGuideDAO pdao = new PlantsGuideDAO();
		plist = (ArrayList<PlantsGuide>) pdao.findAllPlantsGuide();
		return SUCCESS;
	}
	
	public String storeDonationForm(){
		ActionContext actionContext = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) actionContext.get(ServletActionContext.HTTP_REQUEST);
		
		String fullName = request.getParameter("fullName");
		String commGardenName = request.getParameter("commGardenName");
		String email = request.getParameter("email");
		String street = request.getParameter("street");
		String suburb = request.getParameter("suburb");
		String postCode = request.getParameter("postCode");
		String product = request.getParameter("product");
		double amount = Double.parseDouble(request.getParameter("amount"));
		String unit = request.getParameter("unit");
		String date = request.getParameter("date");
		String timeRange = request.getParameter("timeRange");
		String status = "Waiting for collect";
		
		d = new Donation(0, fullName, commGardenName, email, street, suburb, postCode, product, amount, unit, date, timeRange, status);
		DonationDAO ddao = new DonationDAO();
		ddao.insertDonationRecord(d);
		
		return "donationInfo";
	}
	
	/**
	 * get donation list for volunteers
	 * @return
	 */
	public String getDonatioList(){
		
		DonationDAO ddao = new DonationDAO();
		// get all not accepted donations for volunteers
		dlist = (ArrayList<Donation>) ddao.getNotAcceptedDonation();
		// get the donations accepted by that volunteer
		ActionContext actionContext = ActionContext.getContext();
		Map<String, Object> session = actionContext.getSession();
		User u = (User) session.get("user");
		odlist = (ArrayList<Donation>) ddao.getDonationByUserID(u.getUserID());
		dlist.addAll(odlist);
		
		return "list";
	}
	
	/**
	 * get donation list for donors matched by users' email
	 * @return
	 */
	public String getDonationListByEmail(){
		ActionContext actionContext = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) actionContext.get(ServletActionContext.HTTP_REQUEST);
		Map<String, Object> session = actionContext.getSession();
		
		User user = (User) session.get("user");
		
		DonationDAO ddao = new DonationDAO();
		dlist = (ArrayList<Donation>) ddao.getDonationByEmail(user.getEmail());
		
		return "list";
	}
	
	public String showDonation(){
		ActionContext actionContext = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) actionContext.get(ServletActionContext.HTTP_REQUEST);
		int id = Integer.parseInt(request.getParameter("id"));
		
		DonationDAO ddao = new DonationDAO();
		d = ddao.findDonationByID(id);
		
		return "donsta";
	}
	
	public String changeStatus(){
		ActionContext actionContext = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) actionContext.get(ServletActionContext.HTTP_REQUEST);
		Map<String, Object> session = actionContext.getSession();
		User u = (User) session.get("user");
		int id = Integer.parseInt(request.getParameter("id"));
		String status = request.getParameter("status");
		// change donation status in donation record
		DonationDAO ddao = new DonationDAO();
		ddao.changeStatus(id, status);
		// change order status in order record
		OrderDAO odao = new OrderDAO();
		odao.changeStatus(u.getUserID(), id, status);
		
		return getDonatioList();
	}
	
}
