package com.cbi.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLWarning;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.cbi.entity.CommunityGarden;
import com.cbi.util.DataBaseTool;

public class CommunityGardenDAO {
	
	public List<CommunityGarden> findAllCommunityGarden(){
		List<CommunityGarden> cgList = new ArrayList<CommunityGarden>();
		
		Connection conn = DataBaseTool.getConnection();;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			stmt = conn.createStatement();
			String sql = "SELECT * FROM community_garden ORDER BY community_name asc";
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				cgList.add(new CommunityGarden(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8)));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DataBaseTool.closeConnection(stmt, rs);
		}
		
		return cgList;
	}
	
	public CommunityGarden findCommunityGardenByID(int commID){
		CommunityGarden cg = null;
		
		Connection conn = DataBaseTool.getConnection();;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			stmt = conn.createStatement();
			String sql = "SELECT * FROM community_garden WHERE commID = " + commID;
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				cg = new CommunityGarden(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DataBaseTool.closeConnection(stmt, rs);
		}
		
		return cg;
	}
	
	public CommunityGarden findCommunityGardenByName(String commName){
		CommunityGarden cg = null;
		
		Connection conn = DataBaseTool.getConnection();;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			stmt = conn.createStatement();
			String sql = "SELECT * FROM community_garden WHERE Community_Name = '" + commName + "'";
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				cg = new CommunityGarden(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DataBaseTool.closeConnection(stmt, rs);
		}
		
		return cg;
	}
	
	public List<CommunityGarden> findCommunityGardenByPostCode(String postCode){
		List<CommunityGarden> cglist = new ArrayList<CommunityGarden> ();
		Connection conn = DataBaseTool.getConnection();;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			stmt = conn.createStatement();
			String sql = "SELECT * FROM community_garden WHERE postal_code = '" + postCode + "'";
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				cglist.add(new CommunityGarden(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8)));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DataBaseTool.closeConnection(stmt, rs);
		}
		
		return cglist;
	}
	
	public List<CommunityGarden> findCommunityGardenBySuburb(String suburb){
		List<CommunityGarden> cglist = new ArrayList<CommunityGarden> ();
		Connection conn = DataBaseTool.getConnection();;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			stmt = conn.createStatement();
			String sql = "SELECT * FROM community_garden WHERE suburb LIKE '" + suburb + "%'";
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				cglist.add(new CommunityGarden(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8)));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DataBaseTool.closeConnection(stmt, rs);
		}
		
		return cglist;
	}
	
}
