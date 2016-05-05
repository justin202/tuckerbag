package com.cbi.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.cbi.entity.Pest;
import com.cbi.util.DataBaseTool;

public class PestDAO {
	
	public List<Pest> findAllPest(){
		List<Pest> pestList = new ArrayList<Pest>();
		
		Connection conn = DataBaseTool.getConnection();;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			stmt = conn.createStatement();
			String sql = "SELECT * FROM pest";
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				pestList.add(new Pest(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9)));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DataBaseTool.closeConnection(stmt, rs);
		}
		
		return pestList;
	}
	
	public Pest findPestByID(int pestID){
		Pest pest = null;
		
		Connection conn = DataBaseTool.getConnection();;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			stmt = conn.createStatement();
			String sql = "SELECT * FROM pest WHERE pestID = " + pestID;
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				pest = new Pest(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DataBaseTool.closeConnection(stmt, rs);
		}
		
		return pest;
	}
	
	public Pest findPestByName(String pestName){
		Pest pest = null;
		
		Connection conn = DataBaseTool.getConnection();;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			stmt = conn.createStatement();
			String sql = "SELECT * FROM pest WHERE pestName = '" + pestName + "'";
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				pest = new Pest(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DataBaseTool.closeConnection(stmt, rs);
		}
		
		return pest;
	}

}
