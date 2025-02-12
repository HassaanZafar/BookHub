package com.user.servlet;

import java.io.IOException;
import javax.servlet.*;
import java.io.*;
import javax.servlet.http.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.entity.User;

@WebServlet (name="register", urlPatterns={"/register"}, value = "")
public class RegisterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
try {
	String name=req.getParameter("fname");
	String email=req.getParameter("email");
	String phno=req.getParameter("phno");
	String password=req.getParameter("password");
	String check=req.getParameter("check");
	
	
	

	User us=new User();
	us.setName(name);
	us.setEmail(email);
	us.setPhno(phno);
	us.setPassword(password); 

	HttpSession session=req.getSession();
	
	if(check!=null)
	{
		UserDAOImpl dao=new UserDAOImpl(DBConnect.getConn());
		
		boolean f2=dao.checkUser(email);
		if(f2)
		{
			boolean f=dao.userRegister(us);
			if(f)
			{
				session.setAttribute("successMsg", "Registration Successfull!");
				resp.sendRedirect("register.jsp");
			}else
			{
				session.setAttribute("failedMsg", "Error getting registered");
				resp.sendRedirect("register.jsp");
			}
		}else {
			session.setAttribute("failedMsg", "User Already Exist! Try another Email id");
			resp.sendRedirect("register.jsp");
		}

	}else
	{
		session.setAttribute("failedMsg", "Please agree Terms & Conditions!");
		resp.sendRedirect("register.jsp");
	}

} catch (Exception e) {
	e.printStackTrace();
}
	
	}
 
}
