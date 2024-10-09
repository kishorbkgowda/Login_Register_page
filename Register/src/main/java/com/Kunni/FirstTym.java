package com.Kunni;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/smash")
public class FirstTym extends HttpServlet {
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException,IOException
	{
	   String Firstname = req.getParameter("first");
	   String Lastname = req.getParameter("last");
	   String Email = req.getParameter("email");
	   String password = req.getParameter("pswd");
	   String gender = req.getParameter("gender");
	   
	   if (Firstname.equals("") || Lastname.equals("") || Email.equals("") || password.equals("") || gender.equals(""))
	    {
		   RequestDispatcher rd = req.getRequestDispatcher("/SignUp.jsp");
		   rd.forward(req, res);
           return;
		}
	   
	   try
	   {
		    Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pradeep","root","Kishor@999");
			PreparedStatement ps = con.prepareStatement("insert into registeredusers(Firstname,Lastname,Email,Gender,Pswd) values(?,?,?,?,?)");
			ps.setString(1, Firstname);
			ps.setString(2, Lastname);
			ps.setString(3, Email);
			ps.setString(4, gender);
			ps.setString(5, password);
			int i = ps.executeUpdate();
			System.out.println(i>0 ? "Successfully Updated" : "Not able to update");
			if(i>0)
			{
				RequestDispatcher rd = req.getRequestDispatcher("/Login.jsp");
				rd.forward(req, res);
				return;
			}
			
	   }
	   catch (Exception e) {
		e.printStackTrace();
		System.out.println(e);
	}
	}

}
