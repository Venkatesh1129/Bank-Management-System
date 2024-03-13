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
         background: linear-gradient(80deg,lightgreen,lightgray);
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
    span{
    	color:red;
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
		<h2 align=center>ABOUT US</h2>
		<p>SDFC, is an Indian Multinational, Public Sector Banking and Financial services statutory body headquartered in Mumbai. The rich heritage and legacy of over 200 years, accredits SDFC as the most trusted Bank by Indians through generations.

SDFC, the largest Indian Bank with 1/4th market share, serves over 48 crore customers through its vast network of over 22,405 branches, 65,627 ATMs/ADWMs, 76,089 BC outlets, with an undeterred focus on innovation, and customer centricity, which stems from the core values of the Bank - Service, Transparency, Ethics, Politeness and Sustainability.

The Bank has successfully diversified businesses through its various subsidiaries i.e SDFC General Insurance, SDFC Life Insurance, SDFC Mutual Fund, SDFC Card, etc. It has spread its presence globally and operates across time zones through 235 offices in 29 foreign countries.

Growing with times, SDFC continues to redefine banking in India, as it aims to offer responsible and sustainable Banking solutions..</p>
</body>
</html>