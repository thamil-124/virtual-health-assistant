package com.login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDao {
	
	public String url="jdbc:mysql://localhost:3306/mysql_database?autoReconnect=true&useSSL=false";
	public String um="root";
	public String password="root";
	public boolean check(String table,String uname,String pass) throws SQLException, ClassNotFoundException {
		String sql="SELECT * FROM "+table+" WHERE name = ? and password = ?";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,um,password);
		PreparedStatement stmt=con.prepareStatement(sql);
		stmt.setString(1, uname);
		stmt.setString(2,pass);
		ResultSet res=stmt.executeQuery();
		if(res.next()) return true;	
		return false;
	}
public String getID(String role) throws ClassNotFoundException, SQLException {
		String sql="SELECT COUNT(*) as len FROM "+role+";";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,um,password);
		PreparedStatement stmt=con.prepareStatement(sql);
		ResultSet res=stmt.executeQuery();
		if(res.next()) {
			return res.getString("len");
		}
		return null;
	}













}
