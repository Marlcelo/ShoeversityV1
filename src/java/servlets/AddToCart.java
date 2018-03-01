/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
@WebServlet(urlPatterns = {"/AddToCartServlet"})
public class AddToCart extends HttpServlet {

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
            out.println("<title>Servlet AddToCart</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddToCart at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
            
             
            HttpSession sesh = request.getSession();
            int shoe_id = (int) sesh.getAttribute("item_id");
            int qty = Integer.parseInt(request.getParameter("qty"));
            
            out.println("Shoe id: "+shoe_id+" qty: "+qty);
            
            ArrayList<Integer> cart;
            
            if(sesh.getAttribute("cart") == null){
                out.println("No cart yet");
                cart = new ArrayList<>();
                out.println("Cart Created");
  
                out.println("Shoe id: "+shoe_id+" qty: "+qty);
                
                cart.add(shoe_id);
                cart.add(qty);
                
                out.println("contents of cart: "+cart.get(0));
                sesh.setMaxInactiveInterval(30*60); //setting session to expiry in 30 mins
                
                sesh.setAttribute("cart", cart);
                
//                response.sendRedirect("index.htm");
                
            }else{
                cart = (ArrayList<Integer>) sesh.getAttribute("cart");
                
                cart.add(shoe_id);
                cart.add(qty);
                
                sesh.setAttribute("cart", cart);
                out.println("at else statemnt");
//                response.sendRedirect("shopping_cart.jsp");
            }
            
            response.sendRedirect("index.htm");
            
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
