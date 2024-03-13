<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
	body{
		 display: flex;
         justify-content: center;
         align-items: center;
         flex-direction: column;
         background: linear-gradient(90deg,lightgreen,lightgray);
	}
    a{
        text-decoration: none;
        color: black;
    }
    nav{
    	 background: linear-gradient(215deg,lightgreen,lightgray);
    	 width:80%;
    	 display: flex;
         justify-content: space-around;
         border:1px solid green;
         border-radius: 20px;
    }
    h2{
    	background: linear-gradient(215deg,rgb(92, 178, 92),rgb(151, 149, 149));
    	border-radius: 20px;
    	width:300px;
    }
</style>
</head>
<body>
	<h1>SDFC BANK</h1>
		<h3>EXTRAORDINARY SERVIES</h3>
		<nav >
		<a href="home.jsp">Home</a>
		<a href="newaccount.jsp">New Account</a>
		<a href="balance.jsp">Balance</a>
		<a href="deposit.jsp">Deposit</a>
		<a href="withdraw.jsp">Withdraw</a>
		<a href="transfer.jsp">Transfer</a>
		<a href="closeaccount.jsp">CloseA/C</a>
		<a href="aboutus.jsp">AboutUs</a>
		</nav>
		<h2 align="center">Home Page</h2>
		<h1>Welcome to SDFC Bank</h1>
</body>
</html>