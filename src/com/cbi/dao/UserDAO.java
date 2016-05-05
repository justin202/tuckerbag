package com.cbi.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.cbi.entity.User;
import com.cbi.util.DataBaseTool;

/**
 * the data access object of user.
 * contains two functions:  1. user register 2. user log in
 * 
 * @author Hu
 *
 */
public class UserDAO {
	
	/**
	 * insert the user information to database
	 * @param u the user entity
	 * @return	true if the user information is stored
	 * 			false if exception happens
	 */
	public boolean register(User u){
		boolean result = true;
		
		Connection conn = DataBaseTool.getConnection();;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "INSERT INTO user(email, password, userType, firstName, lastName, " +
							"gender, street, suburb, postcode) " +
						"values(?, ?, ?, ?, ?, ?, ?, ?, ?)";
			stmt = conn.prepareStatement(sql);
			
			stmt.setString(1, u.getEmail());
			stmt.setString(2, u.getPassword());
			stmt.setString(3, u.getUserType());
			stmt.setString(4, u.getFirstName());
			stmt.setString(5, u.getLastName());
			stmt.setString(6, u.getGender());
			stmt.setString(7, u.getStreet());
			stmt.setString(8, u.getSuburb());
			stmt.setString(9, u.getPostCode());
			
			stmt.execute();
		} catch (SQLException e) {
			result = false;
			e.printStackTrace();
		} finally{
			DataBaseTool.closeConnection(stmt, rs);
		}
		
		return result;
	}
	
	/**
	 * find user by the email and password, which is log in method
	 * @param email
	 * @param password
	 * @return	null if no such user
	 */
	public User login(String email, String password){
		User u = null;
		
		Connection conn = DataBaseTool.getConnection();
		Statement stmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM user WHERE email = '" + email + "' AND password = '" + password + "'";
		
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if(rs.next()){
				u = new User(rs.getInt(1), rs.getString(2), rs.getString(3), 
						rs.getString(4), rs.getString(5), 
						rs.getString(6), rs.getString(7), 
						rs.getString(8), rs.getString(9), 
						rs.getString(10));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			DataBaseTool.closeConnection(stmt, rs);
		}
		
		return u;
	}

}
