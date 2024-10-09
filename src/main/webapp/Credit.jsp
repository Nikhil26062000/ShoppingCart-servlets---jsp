<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


    <style>
        
        body{
            background: aliceblue;
        }

        #place{
            width: 250px;
            height: 40px;
            padding-left: 10px;
            font-size: 15px;
        }

        .row{
            width:500px;
            display: flex;
            justify-content:flex-start;
            
        }

        .row input{
            margin: 1%;
        }

        button{
            width: 120px;
            height: 40px;
            border: none;
            background: green;
            color: aliceblue;
            font-size: 19px;
            font-style: oblique;
            border-radius: 1px 20px;
        }

    </style>
</head>
<body>

	  <nav>
        <h4>Credit / Debit / ATM Card</h4><br>
        <input id="place" type="text" placeholder="Enter your credit / debit card number"><br><br>
       
        <div class="row">
            <input id="place-2" type="text" placeholder="Valid  thru">
            <input id="place-3" type="text" placeholder="cvv">
        </div>

        <br>
        <a href="Greet.jsp"><button>Pay</button></a>
        
    </nav>
</body>
</html>