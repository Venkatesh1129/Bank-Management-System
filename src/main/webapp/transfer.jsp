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
    form{
    	border:1px solid black;
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
    .c1:hover{
    	background-color:blue;
    }
    .c1{
    	border:0px;
    	border-radius: 10px;
    }
 </style>
 <script src="validation.js"></script>
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
		<h2 align=center>TRANSFER FORM</h2>
		<form action="TransferCode.jsp" method="post" onsubmit="return transfer_fun()" name="transfer">
			<table cellspacing=10>
			<tr>
				<td>Account Number:</td>
				<td><input type="text" name="accno" placeholder="Enter 8-digit number"></td>
				<td><span id="accno_error"></span></td>
			</tr>
			<tr>
				<td>Name:</td>
				<td><input type="text" name="uname" placeholder="Enter your name"></td>
				<td><span id="uname_error"></span></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="psw" placeholder="Enter password"></td>
				<td><span id="psw_error"></span></td>
			</tr>
			<tr>
				<td>Target Account No:</td>
				<td><input type="text" name="taccno" placeholder="Enter 8-digit number"></td>
				<td><span id="taccno_error"></span></td>
			</tr>
			<tr>
				<td>Amount:</td>
				<td><input type="text" name="transferamount" placeholder="Enter amount"></td>
				<td><span id="amount_error"></span></td>
			</tr>
			<tr>
				<td><input class="c1" type="submit" value="Submit"></td>
				<td><input class="c1" type="reset" value="Clear"></td>
			</tr>
			</table>
		</form>
</body>
</html>