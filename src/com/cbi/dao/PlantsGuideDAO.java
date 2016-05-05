package com.cbi.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.cbi.entity.PlantsGuide;
import com.cbi.util.DataBaseTool;

public class PlantsGuideDAO {
	
	public List<PlantsGuide> findAllPlantsGuide(){
		List<PlantsGuide> pgList = new ArrayList<PlantsGuide>();
		
		Connection conn = DataBaseTool.getConnection();;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			stmt = conn.createStatement();
			String sql = "SELECT * FROM plantsguide ORDER BY plantName ASC";
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				pgList.add(new PlantsGuide(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), 
						rs.getString(10), rs.getString(11),rs.getString(13), rs.getString(14), rs.getString(12)));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DataBaseTool.closeConnection(stmt, rs);
		}
		
		return pgList;
	}
	
	public PlantsGuide findPlantsGuideByID(int pgID){
		PlantsGuide pg = null;
		
		Connection conn = DataBaseTool.getConnection();;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			stmt = conn.createStatement();
			String sql = "SELECT * FROM plantsguide WHERE plantID = " + pgID;
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				pg = new PlantsGuide(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), 
						rs.getString(10), rs.getString(11),rs.getString(13), rs.getString(14), rs.getString(12));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DataBaseTool.closeConnection(stmt, rs);
		}
		
		return pg;
	}
	
	public List<PlantsGuide> findPlantsGuideByName(String pgName){
		List<PlantsGuide> pgList = new ArrayList<PlantsGuide>();
		
		Connection conn = DataBaseTool.getConnection();;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			stmt = conn.createStatement();
			String sql = "SELECT * FROM plantsguide WHERE plantName LIKE '" + pgName + "%'";
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				pgList.add(new PlantsGuide(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), 
						rs.getString(10), rs.getString(11),rs.getString(13), rs.getString(14), rs.getString(12)));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DataBaseTool.closeConnection(stmt, rs);
		}
		
		return pgList;
	}

}
