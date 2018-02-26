<%-- 
    Document   : register_brand
    Created on : Feb 25, 2018, 7:25:01 PM
    Author     : Marl
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
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
        %>
        
    </body>
</html>
