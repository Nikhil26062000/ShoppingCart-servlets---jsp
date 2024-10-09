<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>



    <style>
        *{
            margin:0px;
            padding:0px;
            box-sizing: border-box;
        }

        body{
            background: whitesmoke;
        }

        .nav-title{
            width: 100%;
            height: 10vh;
            background-color: blue;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .nav-title h2{
            font-size: 20px;
            color: white;
            text-transform: capitalize;
        }

        .option-1{
            width: 100%;
            height: auto;
            background: white;
            box-shadow: 0 2px 4px 0 rgba(0,0,0,.08);
            padding-top: 1%;
            padding-bottom: 1%;

        }

        .option-2{
            width: 100%;
            height: auto;
            background: white;
            box-shadow: 0 2px 4px 0 rgba(0,0,0,.08);
            padding-top: 1%;
            padding-bottom: 1%;

        }

        .row-1{
            width: 90%;
            margin-left: 2%;
            padding: 10px;
        }

        .row-1 .lable-1{
            padding: 10px;
        }

        .row-2 h4{
            color: green;
            padding-left: 4%;
        }

        .row-2 h5{
            color: gray;
            padding-left: 4%;
        }

        .row-3 button{
            width: 200px;
            height: 50px;
            margin-left: 4%;
            margin-top: 1%;
            font-size: 20px;

        } 

        .row-3 button:hover{
            background-color:blue;
            color: white;
            border:none;
        }

        #upiPlace{
            width: 250px;
            height: 40px;
            padding-left: 10px;
            font-size: 15px;
            margin-left: 4%;
        }
    </style>
</head>
<body>

  <div class="nav-title">
        <h2>Payment Option</h2>
    </div>

  

    <section class="option-1">

        <div class="row-1">
            <input type="radio" value="UPI"  name="radio-btn">
            <label id="lable-1">Paytm Upi <span style="color:grey;">9934******</span> </label>
        </div>

        <div class="row-2">
            <h4>Rs15 discount available</h4>
        </div>

         <a href="otp.jsp"><div class="row-3">
            <button>Continue</button>
        </div></a>
        
    </section><br><br>

    <!-- This section is for UPI  -->

    <section class="option-1">

        <div class="row-1">
            <input type="radio" value="UPI"  name="radio-btn">
            <label id="lable-1">UPI  </label>
        </div>

        <div class="row-2">
            <h4>Rs15 discount available</h4>
        </div>

        <br>

        <input id="upiPlace" type="text" placeholder="Enter your UPI id">

        <a href="Greet.jsp"><div class="row-3">
            <button>Continue</button>
        </div></a>
        
        
    </section><br><br>

    <!-- This section is for Credit/Debit card  -->

    <section class="option-1">

        <div class="row-1">
            <input type="radio" value="Card" name="radio-btn">
            <label id="lable-1">Credit/Debit card </label>
        </div>

        <div class="row-2">
            <h4>Add and secure your card as per RBI guidelines</h4>
        </div>

        <div class="row-3">
            <a href="Credit.jsp"><button>Continue</button></a> 
        </div>
        
        
    </section><br><br>

    <!-- This section is for Net Banking -->

    <section class="option-1">

        <div class="row-1">
            <input type="radio" value="NetBanking" name="radio-btn">
            <label id="lable-1">Net Banking</label> </label>
        </div>

        <div class="row-2">
            <h5>This instrument has low sucess rate.Use UPI for better experience.</h5>
        </div>

        <div class="row-3">
           <a href="NetBank.jsp"><button>Continue</button></a> 
        </div>
        
        
    </section><br><br>

    <!-- This section is for Cash On delivery -->

    <section class="option-1">

        <div class="row-1">
            <input type="radio" value="Cash" name="radio-btn">
            <label id="lable-1">Cash on Delivery</label>
        </div>

           <a href="Greet.jsp"><div class="row-3">
            <button>Continue</button>
        </div></a>
        
        
    </section><br><br>

    <!-- This section is for EMI -->

    <section class="option-1">

        <div class="row-1">
            <input type="radio" value="EMI" name="radio-btn">
            <label id="lable-1" style="color:grey;">EMI</label> </label>
        </div>

        <div class="row-2">
            <h5>Not available</h5>
        </div>

        <!-- <div class="row-3">
            <button>Continue</button>
        </div> -->
        
        
    </section><br><br>




</body>
</html>