<%@page import="cn.connection.DbCon"%>
<%@page import="cn.dao.ProductDao"%>
<%@page import="cn.model.*"%>
<%@page import="java.util.*" %>
<%@page import="java.util.List" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
User auth = (User) request.getSession().getAttribute("auth");
if (auth != null) {
	request.setAttribute("auth", auth);

}

ProductDao pd = new ProductDao(DbCon.getConnection());
List<Product> products = pd.getAllProducts();



ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
if(cart_list != null){
	request.setAttribute("cart_list",cart_list);
}


%>

<!DOCTYPE html>
<html>
<head>
 <%@include file="includes/head.jsp"%>
<title>Welcome to Shopping cart</title>


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<style>

 img{
 background-repeat: no-repeat;
  background-attachment: fixed;
  background-position: center;:
}

#section1{
display:flex;
justify-content:space-between;
}

.st{
border: 20px solid black;
}
#fl{
display:flex;
justofy-content: space-around;
}
#foot{
background-color:red;
width:100%;
height:20vh;
}


h4{
    color: aliceblue;
}



  .fa-facebook-f:before {
    content: "\f39e";
    color: blue;
    font-size: 40px;
  }
  .fa-linkedin-in:before {
    content: "\f0e1";
    color: blue;
    font-size: 40px;
  }
  .fa-twitter:before {
    content: "\f099";
    color: rgb(62, 182, 223);
    font-size: 40px;
  }

  .fa-youtube:before {
    content: "\f167";
    color: red;
    font-size: 40px;
  }
  .fa-instagram:before {
    content: "\f16d";
    color: rgb(215, 39, 124);
    font-size: 40px;
  }
  
  .footclass {
    width: 18%;
    display: flex;
    justify-content: space-around;
  }
  
  #Foot {
    width: 100%;
    height: 20vh;
    display: flex;
    justify-content: space-evenly;
    background-color: black;
    padding-top: 30px;
  }
  
  
</style>
<body>
	<%@include file="includes/Navbar.jsp"%>

	<%-- <% out.print(DbCon.getConnection()); %> --%>

	<div >
	  <img src="product-images/menu.png" alt="Girl in a jacket" width="100%" height="800">
	
	</div>
	<br><br>
	<div class="card-header my-3" style="text-align:center">All Products</div>
	<div class="container">

		
		<div class="row">
		
		<%
		
		if(!products.isEmpty()){
			
			for(Product p:products){%>
				<div class="col-md-3 my-3" >

				<div class="card w-100" style="width: 18rem;">
					<img class="card-img-top" src=<%= p.getImage() %> alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title"><%= p.getName() %></h5>
						<h6 class="price">Price: $<%= p.getPrice()%></h6>
						<h6 class="category">Category:<%= p.getCategory() %></h6>
						
						<div class="mt-3 d-flex justify-content-between">
							<a href="add-to-cart?id=<%=p.getId() %>" class="btn btn-dark">Add to Cart</a>
							<a href="order-now?quantity=1&id=<%= p.getId() %>" class="btn btn-primary">Buy Now</a>
						</div>
					
						
					</div>
				</div>

			</div>
			<% }
		}
		
		%>

		

		</div>

	</div>
	<br><br>
	
	<section style="text-align:center; color:red">
	<h4>SpicY MenU</h4>
	</section>
	<br>
	
	<div id="section1" class="container">
		 <img class="st" src="product-images/menu.png" alt="" width="30%" height="30%">
		  <img class="st" src="product-images/game.png" alt="" width="30%" height="30%">
		   <img class="st" src="product-images/game2.png" alt="" width="30%" height="30%">
	</div>

<br><br>

<!--   <footer id="Foot">

    <div class="footclass">
      <i class="fa-brands fa-facebook-f"></i>
      <h4>Check Out On Facebook</h4>
    </div>
    <div class="footclass">
      <i class="fa-brands fa-linkedin-in"></i>
      <h4>Check Out On Linkedin</h4>
    </div>
    <div class="footclass">
      <i class="fa-brands fa-twitter"></i>
      <h4>Check Out On Twitter</h4>
    </div>
    <div class="footclass">
      <i class="fa-brands fa-youtube"></i>
      <h4>Check Out On Youtube</h4>
    </div>
    <div class="footclass">
      <i class="fa-brands fa-instagram"></i>
      <h4>Check Out On Instagram</h4>
    </div>
  </footer> -->
  
  
  
  
  
  
  
  <!-- Footer -->
<footer class="bg-dark text-center text-white">
  <!-- Grid container -->
  <div class="container p-4">

    <!-- Section: Social media -->
    <section class="mb-4">
      <!-- Facebook -->
      <a class="btn btn-primary btn-floating m-1" style="background-color: #3b5998" href="#!" role="button"><i class="fab fa-facebook-f"></i></a>

      <!-- Twitter -->
      <a class="btn btn-primary btn-floating m-1" style="background-color: #55acee" href="#!" role="button"><i class="fab fa-twitter"></i></a>

      <!-- Google -->
      <a class="btn btn-primary btn-floating m-1" style="background-color: #dd4b39" href="#!" role="button"><i class="fab fa-google"></i></a>

      <!-- Instagram -->
      <a class="btn btn-primary btn-floating m-1" style="background-color: #ac2bac" href="#!" role="button"><i class="fab fa-instagram"></i></a>

      <!-- Linkedin -->
      <a class="btn btn-primary btn-floating m-1" style="background-color: #0082ca" href="#!" role="button"><i class="fab fa-linkedin-in"></i></a>
      <!-- Github -->
      <a class="btn btn-primary btn-floating m-1" style="background-color: #333333" href="#!" role="button"><i class="fab fa-github"></i></a>
    </section>
    <!-- Section: Social media -->


    <!-- Section: Form -->
    <section class="">
      <form action="">
        <!--Grid row-->
        <div class="row d-flex justify-content-center">
          <!--Grid column-->
          <div class="col-auto">
            <p class="pt-2">
              <strong>Sign up for our newsletter</strong>
            </p>
          </div>
          <!--Grid column-->

          <!--Grid column-->
          <div class="col-md-5 col-12">
            <!-- Email input -->
            <div class="form-outline form-white mb-4">
              <input type="email" id="form5Example2" class="form-control" />
              <label class="form-label" for="form5Example2">Email address</label>
            </div>
          </div>
          <!--Grid column-->

          <!--Grid column-->
          <div class="col-auto">

            <!-- Submit button -->
            <button type="submit" class="btn btn-outline-light mb-4">
              Subscribe
            </button>
          </div>
          <!--Grid column-->
        </div>
        <!--Grid row-->
      </form>
    </section>
    <!-- Section: Form -->


    <!-- Section: Text -->
    <section class="mb-4">
      <p>
        Lorem ipsum dolor sit amet consectetur adipisicing elit. Sunt
        distinctio earum repellat quaerat voluptatibus placeat nam,
        commodi optio pariatur est quia magnam eum harum corrupti dicta,
        aliquam sequi voluptate quas.
      </p>
    </section>
    <!-- Section: Text -->


    <!-- Section: Links -->
    <section class="">
      <!--Grid row-->
      <div class="row">
        <!--Grid column-->
        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
          <h5 class="text-uppercase">ABOUT</h5>

          <ul class="list-unstyled mb-0">
            <li>
              <a href="#!" class="text-white">Contact Us</a>
            </li>
            <li>
              <a href="#!" class="text-white">About Us</a>
            </li>
            <li>
              <a href="#!" class="text-white">Careers</a>
            </li>
            <li>
              <a href="#!" class="text-white">Press</a>
            </li>
          </ul>
        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
          <h5 class="text-uppercase">HELP</h5>

          <ul class="list-unstyled mb-0">
            <li>
              <a href="#!" class="text-white">Payments</a>
            </li>
            <li>
              <a href="#!" class="text-white">Shipping</a>
            </li>
            <li>
              <a href="#!" class="text-white">Cancellation & Return</a>
            </li>
            <li>
              <a href="#!" class="text-white">FAQ</a>
            </li>
          </ul>
        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
          <h5 class="text-uppercase">CONSUMER POLICY</h5>

          <ul class="list-unstyled mb-0">
            <li>
              <a href="#!" class="text-white">Return Policy</a>
            </li>
            <li>
              <a href="#!" class="text-white">Terms of Use</a>
            </li>
            <li>
              <a href="#!" class="text-white">security</a>
            </li>
            <li>
              <a href="#!" class="text-white">Privacy</a>
            </li>
          </ul>
        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
          <h5 class="text-uppercase">Social</h5>

          <ul class="list-unstyled mb-0">
            <li>
              <a href="#!" class="text-white">facebook</a>
            </li>
            <li>
              <a href="#!" class="text-white">Twitter</a>
            </li>
            <li>
              <a href="#!" class="text-white">Youtube</a>
            </li>
            <li>
              <a href="#!" class="text-white">Instagram</a>
            </li>
          </ul>
        </div>
        <!--Grid column-->
      </div>
      <!--Grid row-->
    </section>
    <!-- Section: Links -->

  </div>
  <!-- Grid container -->

  <!-- Copyright -->
  <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2)">
    © 2023 Copyright:
    <a class="text-white" href="https://mdbootstrap.com/">FoodyFood.com</a>
  </div>
  <!-- Copyright -->

</footer>
<!-- Footer -->

	<%@include file="includes/footer.jsp"%>
</body>
</html>