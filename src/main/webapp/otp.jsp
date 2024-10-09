<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

       

        #container{
            background-color: white;
            width: 30%;
            height: 300px;
            border-radius: 20px;
            box-shadow: 1px 1px 4px black;
            margin: 150px auto;
            display: grid;
            grid-template-columns: 10px 1fr 10px;
            grid-template-rows: 50px 1fr .5fr 1.5fr;

        }

        #container2{
            background-color: white;
            width: 25%;
            height: 300px;
            border-radius: 20px;
            box-shadow: 1px 1px 4px black;
            margin: 150px auto;
            padding: 10px;
            /* display: grid;
            grid-template-columns: 10px 1fr 10px;
            grid-template-rows: 50px 1fr .5fr 1.5fr; */

        }

        body{
            background-color:grey;
        }

        h2{
            grid-row:1/2;
            grid-column: 2/3;
            display: grid;
            place-items: center;
        }

        input{
            grid-column: 2/3;
            grid-row: 2/3;
        }

        #resend{
            grid-column: 2/3;
            grid-row: 3/4;
            width: 15%;
            height: 80%;
            display: grid;
            place-content: center;
            margin: 5px auto;
            background: aliceblue;
        }

        #verify{
            grid-column: 2/3;
            grid-row: 4/5;
            width: 45%;
            height: 40%;
            display: grid;
            place-content: center;
            margin: 5px auto;
            border-radius: 10px 8px;
            background: green;
            font-size: 25px;
            color: aliceblue;
            font-variant: all-petite-caps;
        }

        input{
            width: 50%;
            display: grid;
            height: 40%;
            margin: 20px auto;
            text-align: center;
            border-radius: 10px;
            font-size: 15px;
            font-style: italic;
        }

        #otp{
            width: 40%;
            height: 28%;
            display: grid;
            place-content: center;
            margin: 150px auto;
            border-radius: 10px 8px;
            background: green !important;
            font-size: 25px;
            color: aliceblue;
        }
        

        
        



        
    </style>
</head>
<body>


 <div id="container">

        <h2>OTP Verification</h2>
        <input id="inplace" type="number" placeholder="Enter the OTP">
        <button id="resend" onclick="otpResend()">Resend</button>
        <a href="Greet.jsp" id="verify">
        	<button onclick="res()" id="btn">Verify</button>
        </a>

    </div>

    <div id="container2">

        <h2 id="otp-place"></h2><br>

             <button id="otp" onclick="show()">Continue</button>
        <!-- <input type="number" placeholder="Enter the OTP">
        <button id="resend">Resend</button>
        <button id="verify">Verify</button> -->

    </div>




<script>
let temp = Math.floor(Math.random()*10000);
let number =0;
        
        	number = Math.floor(Math.random()*10000);
            
           document.getElementById("container").style.display="none";
           document.getElementById("otp-place").innerHTML = number + "is your OTP to complete shopping to FoodyFood. DO NOT share with anyone. FoodyFood never calls to ask for OTP. The otp expires in 10 mins"; 
       

        const show = () => {
            document.getElementById("container2").style.display="none";
            document.getElementById("container").style.display="grid";
            
        }

        const otpResend = () => {
            number = Math.floor(Math.random()*10000);
            
            document.getElementById("container").style.display="none";
            document.getElementById("container2").style.display="grid";
            document.getElementById("otp-place").innerHTML = number + "is your OTP to complete shopping to FoodyFood. DO NOT share with anyone. FoodyFood never calls to ask for OTP. The otp expires in 10 mins"; ;
        }
        
        const res = () =>{
            let nu = document.getElementById("inplace").value;
              if(nu === number){
                  console.log(nu);
                  alert("same");
                 
              }else{
                  console.log(nu);
                  alert("different");
                 
              }
          }
    </script>
</body>
</html>