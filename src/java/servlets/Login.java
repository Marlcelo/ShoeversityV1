/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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
@WebServlet(urlPatterns = {"/LoginServlet"})
public class Login extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
       		
        String uname = request.getParameter("uname");
        String password = request.getParameter("pword");
		
	try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shoeversity", "root", "");
            
            Statement stmnt = conn.createStatement();
            String query = "SELECT * FROM users WHERE u_username=" + uname + " AND u_password=" + password;
			
            ResultSet rs = stmnt.executeQuery(query);
	  
	   while(rs.next()) {
		   out.println(rs.getString("u_username"));
		   out.println(rs.getString("u_password"));
	   }
            
//            out.println("data is inserted");
        }catch(ClassNotFoundException | SQLException e){
            out.println(e);
        }
		
//        if(uname.equals("chels") && password.equals("wassup")){
//		//Store user credentials in sessions
//		HttpSession session = request.getSession();
//		session.setAttribute("auth_user_uname", uname);
//		session.setAttribute("auth_user_pword", password);
//		
//		response.sendRedirect("USERS/account.jsp");
//        }else{
//                response.sendRedirect("login.jsp");
//        }
    }
}
