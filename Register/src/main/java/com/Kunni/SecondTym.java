package com.Kunni;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/hitler")
public class SecondTym extends HttpServlet
{
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException,IOException
	{
	  res.setContentType("text/html");
	  String name = req.getParameter("email");
	  String password = req.getParameter("pswd");
	  PrintWriter out = res.getWriter();
	  
	  if(name.equals("") || password.equals(""))
	  {
		  RequestDispatcher rd = req.getRequestDispatcher("/Login.jsp");
		  rd.forward(req, res);
		  return;
	  }
	  
	  try
	  {
		 Class.forName("com.mysql.cj.jdbc.Driver");
		 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pradeep","root","Kishor@999");
	     PreparedStatement pt = con.prepareStatement("select * from registeredusers where email = ?");
	     pt.setString(1, name);
	     ResultSet rs =  pt.executeQuery();
	     if(rs.next())
	     {
	    	 String pas = rs.getString("Pswd");
	    	 String First = rs.getString("Firstname");
	    	 String Last = rs.getString("Lastname");
	    	 if(password.equals(pas))
	    	 {
	    	 System.out.println("Sucessfully login");
	    	 HttpSession session = req.getSession();
	    	 session.setAttribute("First", First);
	    	 session.setAttribute("Last", Last);
	    	 RequestDispatcher rd = req.getRequestDispatcher("/Profile.jsp");
	    	 rd.forward(req, res);
	    	 }   
	         else 
	         {
	        	System.out.println("Credentials Not found");
	            req.setAttribute("errorMessage", "Invalid username or password.");
	            RequestDispatcher rd = req.getRequestDispatcher("/Login.jsp");
	            rd.include(req, res); 
	        }
	     }
	    else 
	    {
	        req.setAttribute("errorMessage", "Invalid username or password.");
	        RequestDispatcher rd = req.getRequestDispatcher("/Login.jsp");
	        rd.include(req, res); 
	     }
	  }
	  catch (Exception e) {
		System.out.println(e);
	}
	}
}