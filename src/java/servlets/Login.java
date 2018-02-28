/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
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
 * @author Marl
 */
@WebServlet(urlPatterns = {"/LoginServlet"})
public class Login extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Login</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Login at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shoeversity", "root", "");
            
            String username = request.getParameter("uname");
            String password = request.getParameter("pword");
            String sql;
            ResultSet rs = null;
            Statement stmnt = null;
            boolean exists;
            stmnt = conn.createStatement();
            HttpSession session = null;
            
            if(request.getParameter("isAdmin") == null){ // not admin
                sql = "SELECT uid, u_username FROM users where u_username='"+username+"' and u_password='"+password+"'";
                rs = stmnt.executeQuery(sql);
                exists = rs.next();
                
                if(exists){ //user
		   out.println(rs.getString("uid"));
		   out.println(rs.getString("u_username"));
                   
                   session = request.getSession();
                   session.setAttribute("uid", rs.getString("uid"));
                   session.setAttribute("username", rs.getString("u_username"));
                   session.setAttribute("type", 1);
                   session.setMaxInactiveInterval(30*60); //setting session to expiry in 30 mins
                }else{ // brand
                    sql = "SELECT uid, b_username FROM brands where b_username='"+username+"' and b_password='"+password+"'";
                    rs = stmnt.executeQuery(sql);
                    exists = rs.next();
                    
                    if(exists){
                        out.println(rs.getString("uid"));
                        out.println(rs.getString("b_username"));
                   
                        session = request.getSession();
                        session.setAttribute("uid", rs.getString("uid"));
                        session.setAttribute("username", rs.getString("u_username"));
                        session.setMaxInactiveInterval(30*60); //setting session to expiry in 30 mins
                    }else{
                        out.println("INVALID EMAIL OR PASSWORD");
                        response.sendRedirect("login.jsp");
                    }
                    
                    
                }
                   
                
            }else{
                
                sql = "SELECT uid, username FROM admins where username='"+username+"' and password='"+password+"'";
                rs = stmnt.executeQuery(sql);
                
                exists = rs.next();
                
                 if(exists){
		   out.println(rs.getString("uid"));
		   out.println(rs.getString("username"));
                   
                   session = request.getSession();
                   session.setAttribute("uid", rs.getString("uid"));
                   session.setAttribute("username", rs.getString("username"));
                   session.setMaxInactiveInterval(30*60); //setting session to expiry in 30 mins
                   
                   
                   
                }else{
                    out.println("INVALID EMAIL OR PASSWORD");
                    response.sendRedirect("account_sysadmin.jsp");
                    response.sendRedirect("login.jsp");
                }
                 
                
                
            }
            
            response.sendRedirect("index.htm");
            
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
 