/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Chelsey
 */
@WebServlet(urlPatterns = {"/Login"})
public class Login extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
       		
        String uname = request.getParameter("uname");
        String password = request.getParameter("pword");
		
        if(uname.equals("chels") && password.equals("wassup")){
		response.sendRedirect("USERS/account.jsp");
				
		//Store user credentials in sessions
		HttpSession session = request.getSession();
		session.setAttribute("auth_user_uname", uname);
		session.setAttribute("auth_user_pword", password);
        }else{
                response.sendRedirect("login.jsp");
        }
    }
}
