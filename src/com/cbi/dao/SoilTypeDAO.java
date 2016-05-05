package com.cbi.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.cbi.entity.SoilType;
import com.cbi.util.DataBaseTool;

public class SoilTypeDAO {
	
	public List<SoilType> findAllSoilType(){
		List<SoilType> stList = new ArrayList<SoilType>();
		
		Connection conn = DataBaseTool.getConnection();;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			stmt = conn.createStatement();
			String sql = "SELECT * FROM soiltype";
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				stList.add(new SoilType(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4)));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DataBaseTool.closeConnection(stmt, rs);
		}
		
		return stList;
	}
	
	public SoilType findSoilTypeByID(int stID){
		SoilType st = null;
		
		Connection conn = DataBaseTool.getConnection();;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			stmt = conn.createStatement();
			String sql = "SELECT * FROM soiltype WHERE typeid = '" + stID + "'";
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				st = new SoilType(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DataBaseTool.closeConnection(stmt, rs);
		}
		
		return st;
	}
	
	public SoilType findSoilTypeByName(String stName){
		SoilType st = null;
		
		Connection conn = DataBaseTool.getConnection();;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			stmt = conn.createStatement();
			String sql = "SELECT * FROM soiltype WHERE name = '" + stName + "'";
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				st = new SoilType(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DataBaseTool.closeConnection(stmt, rs);
		}
		
		return st;
	}

}
