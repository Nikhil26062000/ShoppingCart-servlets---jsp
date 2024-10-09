<%@page import="cn.model.*"%> 
<%@page import="cn.connection.DbCon"%> 
<%@page import="java.util.*" %>
<%@page import="java.text.DecimalFormat"%>
<%@page import="cn.dao.OrderDao"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

 
 
   
 <%
    
     User auth = (User)request.getSession().getAttribute("auth");
     if(auth!=null){
    	 request.setAttribute("auth", auth);
     }else{
    	 response.sendRedirect("login.jsp");
     }
     
     
     ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
     if(cart_list != null){
     	request.setAttribute("cart_list",cart_list);
     }
    
    %>
<!DOCTYPE html>
<html>
<head>
<title>orders</title>

<%@include file="includes/head.jsp" %>
</head>
<body>
<%@include file="includes/Navbar.jsp" %>


<%@include file="includes/footer.jsp" %>
</body>
</html>