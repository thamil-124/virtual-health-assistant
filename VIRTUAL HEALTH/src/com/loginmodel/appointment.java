package com.loginmodel;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.login.LoginDao;
import com.mysql.cj.xdevapi.Statement;

/**
 * Servlet implementation class appointment
 */
@WebServlet("/appointment")
public class appointment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	String thy="INSERT INTO appointment(patientname,location,doctorname,category,reason) VALUES (?,?,?,?,?)";
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException {
		LoginDao check = new LoginDao();
		String patientname=request.getParameter("patname");
		String location=request.getParameter("ploc");
		String doctorname=request.getParameter("doc");
		String category=request.getParameter("cate");
		String reason=request.getParameter("recc");

	
		try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection(check.url,check.um,check.password);
				PreparedStatement stmt=con.prepareStatement(thy);
				stmt.setString(1, patientname);
				stmt.setString(2,location);
				stmt.setString(3,doctorname);
				stmt.setString(4,category);
				stmt.setString(5,reason);
			
				int created=stmt.executeUpdate();
				
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}

