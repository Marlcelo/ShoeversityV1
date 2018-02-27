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
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Marl
 */
@WebServlet(urlPatterns = {"/RegisterBrandServlet"})
public class RegisterBrand extends HttpServlet {

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
            out.println("<title>Servlet RegisterBrand</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegisterBrand at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
            
           
            String brand = request.getParameter("brandname");
            String username = request.getParameter("uname");
            String password = request.getParameter("pword");
            String cpassword = request.getParameter("confirmpword");
            String email = request.getParameter("email");
            ArrayList<String> numbers = new ArrayList<String>();
            ArrayList<String> locations = new ArrayList<String>();
            numbers.add(request.getParameter("number1"));
            locations.add(request.getParameter("location1"));
            String gender = request.getParameter("number1");
            
            int counter = 2;
            boolean contactflag = true;
            
            while(contactflag){
    
                if(request.getParameter("number".concat(Integer.toString(counter)))!=null){
                    String parameter = "number".concat(Integer.toString(counter));       
                    numbers.add(parameter); 
                    counter++;
                }else
                    contactflag = false;
            }
            
            counter = 2;
            
            boolean locationflag = true;
            
            while(locationflag){
                if(request.getParameter("location".concat(Integer.toString(counter))) != null){
                    String newlocation = "location".concat(Integer.toString(counter));
                    out.println(newlocation);
                    locations.add(newlocation); 
                    counter++;   
                }else
                    locationflag = false;
            }
            
        if(password.equals(cpassword)){    
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shoeversity", "root", "");
            
            Statement stmnt = conn.createStatement();
            
            stmnt.executeUpdate("INSERT INTO brands(brand_name,b_username,b_password,b_email) VALUES('"+brand+"','"+username+"','"+password+"','"+email+"')");
            
            out.println("data is inserted");
            
            String sql = "SELECT uid FROM BRANDS WHERE brand_name = '"+brand+"' AND b_username = '"+username+"'";
            
            
            ResultSet rs = null;
            
           
            rs = stmnt.executeQuery(sql); 
            rs.next();
            String id;
            id = rs.getString("uid"); 
            
            for (int i = 1; i <= numbers.size(); i++){
                String contact = request.getParameter("number".concat(Integer.toString(i)));
                stmnt.executeUpdate("INSERT INTO brand_contact_number (brand_id,contact) VALUES ('"+id+"','"+contact+"')");
                out.println("contact is inserted");
            }
            
            for(int i = 1; i <= locations.size();i++){
                String location = request.getParameter("location".concat(Integer.toString(i)));
                stmnt.executeUpdate("INSERT INTO brand_location (brand_id,location) VALUES ('"+id+"','"+location+"')");
                out.println("Stored Location");
            }
            
            String website = request.getParameter("website");
            String twitter = request.getParameter("twitter");
            String instagram = request.getParameter("instagram");
            String facebook = request.getParameter("facebook");
            
            if(!website.isEmpty()){
                stmnt.executeUpdate("INSERT INTO brand_link(brand_id,link_type,link) VALUES('"+id+"','website','"+website+"')");
                out.println("data is inserted");  
            }
            if(!twitter.isEmpty()){
                stmnt.executeUpdate("INSERT INTO brand_link(brand_id,link_type,link) VALUES('"+id+"','twitter','"+twitter+"')");
                out.println("data is inserted");  
            }
            if(!instagram.isEmpty()){
                stmnt.executeUpdate("INSERT INTO brand_link(brand_id,link_type,link) VALUES('"+id+"','instagram','"+instagram+"')");
                out.println("data is inserted");  
            }
            if(!facebook.isEmpty()){
                stmnt.executeUpdate("INSERT INTO brand_link(brand_id,link_type,link) VALUES('"+id+"','facebook','"+facebook+"')");
                out.println("data is inserted");  
            }
            
        }catch(Exception e){
            out.println(e);
        };
        }else
            out.println("Something went wrong please check your password");
        
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
