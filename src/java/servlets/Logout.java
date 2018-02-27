package servlets;

import java.io.IOException;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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
@WebServlet(urlPatterns = {"/LogoutServlet"})
public class Logout extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		//destory user session
		HttpSession session = request.getSession();
		if(session != null)
			session.invalidate();
		
		//redirect to home page
		response.sendRedirect(request.getContextPath() + "/login.jsp");
                
                String uname = request.getParameter("uname");
        String password = request.getParameter("pword");
		
//	try{
//            Class.forName("com.mysql.jdbc.Driver");
//            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shoeversity", "root", "");
//            
//            Statement stmnt = conn.createStatement();
//            String query = "SELECT * FROM users WHERE u_username=" + uname + " AND u_password=" + password;
//			
//            ResultSet rs = stmnt.executeQuery(query);
//	  
//	   while(rs.next()) {
//		   out.println(rs.getString("u_username"));
//		   out.println(rs.getString("u_password"));
//	   }
//            
////            out.println("data is inserted");
//        }catch(ClassNotFoundException | SQLException e){
//            out.println(e);
//        }
	}
}
