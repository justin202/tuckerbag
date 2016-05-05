package com.cbi.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.cbi.entity.Order;
import com.cbi.util.DataBaseTool;

public class OrderDAO {
	
	public boolean insertOrderRecord(Order order){
		boolean result = true;
		
		Connection conn = DataBaseTool.getConnection();;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "INSERT INTO orderrecord(donationID, volunteerID, status) " +
						"values(?, ?, ?)";
			stmt = conn.prepareStatement(sql);
			
			stmt.setInt(1, order.getDonationID());
			stmt.setInt(2, order.getVolunteerID());
			stmt.setString(3, order.getStatus());
			stmt.execute();
		} catch (SQLException e) {
			result = false;
			e.printStackTrace();
		} finally{
			DataBaseTool.closeConnection(stmt, rs);
		}
		
		return result;
	}
	
	public int getCurrentID(){
		int id = 0;
		
		Connection conn = DataBaseTool.getConnection();
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			stmt = conn.createStatement();
			String sql = "SELECT MAX(orderID) FROM orderrecord";
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				id = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DataBaseTool.closeConnection(stmt, rs);
		}
		
		return id;
	}
	
	public List<Order> getOrderByVolunteerID(int volunteerID){
		ArrayList<Order> list = new ArrayList<Order>();
		
		Connection conn = DataBaseTool.getConnection();
		Statement stmt = null;
		ResultSet rs = null;

		try {
			stmt = conn.createStatement();
			String sql = "SELECT * FROM orderrecord WHERE volunteerID = " + volunteerID;
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				list.add(new Order(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4)));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DataBaseTool.closeConnection(stmt, rs);
		}
		
		return list;
	}
	
	public boolean changeStatus(int volunteerID, int donationID, String status){
		boolean result = true;
		Connection conn = DataBaseTool.getConnection();;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "UPDATE orderrecord SET status = '" + status + "' WHERE donationID = " + donationID 
						+" AND volunteerID = " + volunteerID;
			stmt = conn.createStatement();
			stmt.execute(sql);
		} catch (SQLException e) {
			result = false;
			e.printStackTrace();
		} finally{
			DataBaseTool.closeConnection(stmt, rs);
		}
		
		return result;	
	}

}
