package cn.tech.Servlet;

//import java.io.IOException;
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//


import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import cn.model.*;
import jakarta.servlet.RequestDispatcher;
import   jakarta.servlet.ServletException;
import   jakarta.servlet.http.HttpServlet;
import  jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;




public class AddToCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AddToCartServlet() {
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			response.setContentType("text/html;charset=UTF-8");
			
			try(PrintWriter out = response.getWriter()){
				
				ArrayList<Cart> cartList = new ArrayList<>();
				
				int id = Integer.parseInt(request.getParameter("id"));
				Cart cm = new Cart();
				cm.setId(id);
				cm.setQuantity(1);
				
				HttpSession session = request.getSession();
				ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
				
				if(cart_list == null) {
					cartList.add(cm);
					session.setAttribute("cart-list", cartList);
					response.sendRedirect("index.jsp");
				
				}
				else {
					cartList = cart_list;
					
					boolean exist = false;
					
					for(Cart c:cart_list) {
						if(c.getId()==id) {
							exist = true;
							out.println("<h3 style='color:crimson; text-align:center'>Item already exist in cart.<a href='cart.jsp'>Go to Cart Page</a></h3>");
						}
						
						
					}
					if(!exist) {
						cartList.add(cm);
						response.sendRedirect("index.jsp");
					}
				}
			
				
			}
	}

}
