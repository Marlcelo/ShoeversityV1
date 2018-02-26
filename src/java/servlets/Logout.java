package servlets;

import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author danielflachica
 */
@WebServlet(urlPatterns = {"/Logout"})
public class Logout extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		//destory user session
		HttpSession session = request.getSession();
		if(session != null)
			session.invalidate();
		
		//redirect to home page
		response.sendRedirect(request.getContextPath() + "/login.jsp");
	}
}
