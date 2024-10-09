<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>



 <style>
      /* CSS for Add New Address Form */
      .add-address-form {
        max-width: 500px;
        margin: 0 auto;
        padding: 20px;
        background-color: #f8f8f8;
        border: 1px solid #ddd;
      }

      .add-address-form h2 {
        color: #8da0da;
        margin-top: 0;
        padding-bottom: 10px;
        border-bottom: 1px solid #ddd;
      }

      .add-address-form input[type="text"] {
        width: 45%;
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ddd;
      }

      .btn {
        background-color: #2873f0;
        width: 40%;
        padding: 10px;
        color: #fff;
        font-size: 16px;
        border: none;
        cursor: pointer;
      }

      .btn2 {
        background-color: #fb641b;
        width: 40%;
        padding: 10px;
        color: #fff;
        font-size: 20px;
        border: none;
        cursor: pointer;
        text-decoration:none;
        
      }

      .add-address-form button btn .add-address-form button {
        width: 100%;
        padding: 10px;
        background-color: #fb641b;
        color: #fff;
        font-size: 16px;
        border: none;
        cursor: pointer;
      }

      .add-address-form button:hover {
        background-color: #1c56b3;
      }
      .add-address-form textarea {
        width: 95%;
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ddd;
      }
      .add-address-form input[type="radio"] {
        width: 3%;
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ddd;
      }
      .add-address-form select {
        width: 49.5%;
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ddd;
        font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
      }
      .sub {
        display: flex;
        justify-content: space-between;
      }
      .sub p {
        color: blue;
        margin-right: 50%;
      }
    </style>



</head>
  <body>
    <!-- Add New Address Form -->
    <div class="add-address-form">
      <h2>Add a New Address</h2>
      <form>
        <button class="btn" type="">Use my current location</button>
        <p>
          <input type="text" placeholder="Name" required />
          <input type="text" placeholder="10-digit mobile number" required />
        </p>
        <p>
          <input type="text" placeholder="Pincode" required />
          <input type="text" placeholder="Locality" required />
        </p>
        <p>
          <textarea
            name="address"
            id=""
            cols="68"
            rows="5"
            placeholder="Address(Area and Street)"
            required
          ></textarea>
        </p>
        <p>
          <input type="text" placeholder="City/District/Town" />
          <select required>
            <option value="" selected disabled>--State--</option>
            <option value="state1">State 1</option>
            <option value="state2">State 2</option>
            <!-- Add more state options as needed -->
          </select>
        </p>
        <p>
          <input type="text" placeholder="Landmark (Optional)" />
          <input type="text" placeholder="Alternate Phone (Optional)" />
        </p>
        <p>Address Type</p>
        <p>
          <input type="radio" name="Address" id="Home" />Home (All day delivery)
          &nbsp; &nbsp; &nbsp; &nbsp;

          <input type="radio" name="Address" id="home" />Work (Delivery between
          10 AM-5 PM)
        </p>
        <div class="sub">
          <a href="Payment.jsp" class="btn2">Save and deliver here</a>
          <a href="cart.jsp"><p>Cancel</p></a>
        </div>
      </form>
    </div>
  </body>
</html>