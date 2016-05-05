package com.cbi.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DataBaseTool {
	
	// class name of mysql driver
	private static String driver = "com.mysql.jdbc.Driver";

	// URL of the database
	private static String url = "jdbc:mysql://40.126.245.214:3306/tbjsp";

	// user name of database
	private static String user = "cbi";

	// password of database
	private static String password = "tuckerBag$";
	private static Connection conn = null;
	
	public static Connection getConnection(){
		try {
			// load the driver of mysql
			Class.forName(driver);
			// connect to database
			conn = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	public static void closeConnection(Statement stmt, ResultSet rs){
		try {
			if(rs != null)
				rs.close();
			stmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
}
