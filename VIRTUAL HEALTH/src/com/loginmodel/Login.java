package com.loginmodel;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.LoginDao;

	@WebServlet("/Login")
	public class Login extends HttpServlet {
		
		protected void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException {
			LoginDao dao = new LoginDao();
			String username=req.getParameter("username");
			String password=req.getParameter("password"); 
			try {
				String table=null;
				if(dao.check("doctor",username, password)) table="doctor";
				else if(dao.check("lab",username, password)) table="lab";
				else if(dao.check("patient",username, password)) table="patient";
				if(table!=null) {
					HttpSession session=req.getSession();
					session.setAttribute("username",username);
					if(table.equalsIgnoreCase("doctor")) res.sendRedirect("Doctor.jsp");
					else if(table.equalsIgnoreCase("patient")) res.sendRedirect("Patient.jsp");
					else if(table.equalsIgnoreCase("lab")) res.sendRedirect("Lab.jsp");
				}
				else {
					res.sendRedirect("login.jsp");
				}
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}


			


			



