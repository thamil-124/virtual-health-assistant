package signup;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.login.LoginDao;

/**
 * Servlet implementation class doctor
 */
@WebServlet("/doctor")
public class doctor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public doctor() {
        super();
    }

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String sql="INSERT INTO doctor(id,name,password,email,gender,age,department,degree,Contact) VALUES (?,?,?,?,?,?,?,?,?);";
		LoginDao dao = new LoginDao();
		String id="";
		try {
			id=dao.getID("doctor");
		} catch (Exception e) {
			e.printStackTrace();
		} 
		String uname=req.getParameter("username");
		String pass=req.getParameter("password");
		String email=req.getParameter("mail");
		String gender=req.getParameter("gender");
		String age=req.getParameter("age");
	
		String department=req.getParameter("department");
		String degree=req.getParameter("degree");
		String mobile=req.getParameter("Contact");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection(dao.url,dao.um,dao.password);
				PreparedStatement stmt=con.prepareStatement(sql);
				stmt.setString(1,"DOC-"+id);
				stmt.setString(2, uname);
				stmt.setString(3,pass);
				stmt.setString(4,email);
				stmt.setString(5,gender);
				stmt.setString(6,age);
				
				stmt.setString(7,department);
				stmt.setString(8,degree);
				stmt.setString(9,mobile);	
				int created=stmt.executeUpdate();
				if(created>0) 	res.sendRedirect("login.jsp");
				else res.sendRedirect("signupdoctor.jsp");
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}
