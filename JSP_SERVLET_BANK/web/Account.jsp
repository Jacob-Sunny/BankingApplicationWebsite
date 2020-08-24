<%@ page import="Account.Account" %>
<%--
  Created by IntelliJ IDEA.
  User: jacob
  Date: 8/24/2020
  Time: 5:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Online Banking</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
    {
      display: none;
      position: fixed;
      bottom: 0;
      right: 15px;
      border: 3px solid #f1f1f1;
      z-index: 9;
    }

    /* Add styles to the form container */
    .form-container {
      max-width: 300px;
      padding: 10px;
      background-color: white;
    }


  </style>
</head>
<body>
<h3> Welcome to Online Banking</h3>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">BANK ABC</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="Welcome.jsp">Home</a></li>
      <li><a href="Account.jsp">Account</a></li>
      <li><a href="Transfer.jsp">Transfer</a></li>
      <li><a href="History.jsp">Account History</a></li>
      <li><a href="index.jsp">SignOut</a></li>
    </ul>
  </div>
</nav>

<div class="container">
  <h3>Account Page</h3>
  <button type="button" class="btn btn-primary">View Accounts</button>
  <button type="button" class="btn btn-success" onclick="openForm()">Add Account</button>

  <div class="form-popup" id="myForm">
    <form action="Account" class="form-container" method="post">
      <h1>Add an Account</h1>

      <label for="account"><b>Account</b></label>
      <input type="text" placeholder="Enter Account Type" name="account" required>

      <label for="accountID"><b>Account ID</b></label>
      <input type="accountID" placeholder="Enter Account ID" name="accountID" required>

      <label for="accountAmount"><b>Account Amount</b></label>
      <input type="accountAmount" placeholder="Enter Account Amount" name="accountAmount" required>

      <button type="submit" class="btn">Add Account</button>
      <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
    </form>
  </div>



</div>

<script>
  function openForm() {
    document.getElementById("myForm").style.display = "block";
  }

  function closeForm() {
    document.getElementById("myForm").style.display = "none";
  }
</script>



</body>
</html>
