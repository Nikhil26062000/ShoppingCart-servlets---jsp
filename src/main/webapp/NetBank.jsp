<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>

        #title {
            font-size: 15px;
            color:black;
            font-weight:100;
        }

        .BigDiv{
            display: flex;
            justify-content: space-around;
        }

        .sm-Div{
            width: 200px;
            display: flex;
            justify-content: center;
        }

        .sm-Div img{
            width: 30px;
            margin-top: 13px;
            height: 30px;
        }

        button{
            width: 120px;
            height: 40px;
            border: none;
            background: green;
            color: aliceblue;
            font-size: 19px;
            font-style: oblique;
            /* border-radius: 1px 20px; */
        }

    </style>
    
</head>
<body>
	
	 <nav>
        <h4 id="title">Net Banking</h4>
        <h4>Popular Banks</h4>
        <div class="BigDiv">
            <div class="sm-Div">
                <img src="product-images/HDFC.svg">
                <h6>HDFC Bank</h6>
            </div>

            <div class="sm-Div">
                <img src="product-images/ICICI.svg">
                <h6>ICICI Bank</h6>
            </div>

            <div class="sm-Div">
                <img src="product-images/SBI.svg">
                <h6>SBI Bank</h6>
            </div>

            <div class="sm-Div">
                <img src="product-images/Axis.svg">
                <h6>Axis Bank</h6>
            </div>

            <div class="sm-Div">
<!--                 <img src="product-images/Kotak.svg"> -->
                <h6>Kotak Bank</h6>
            </div>
        </div>

        <label for="Banks">Choose a Bank:</label>
        <select name="Banks" id="bnk">
          <option value="HDFC">HDFC Bank</option>
          <option value="ICICI">ICICI Bank</option>
          <option value="SBI">SBI Bank</option>
          <option value="Axis">Axis Bank</option>
          <option value="Kotak">Kotak Bank</option>
        </select>

        <br><br>
        <a href="Greet.jsp"><button>Pay</button></a>
    </nav>
</body>
</html>