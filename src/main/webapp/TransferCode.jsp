<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	String account_no=request.getParameter("accno");
	String name=request.getParameter("uname");
	String password=request.getParameter("psw");
	String targetaccount=request.getParameter("taccno");
	double transferamount=Double.parseDouble(request.getParameter("transferamount"));
	
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/excelrdb","root","root");
		PreparedStatement ps=con.prepareStatement("select *from sdfcbank where account_no=? and name=? and password=?");
		ps.setString(1, account_no);
		ps.setString(2, name);
		ps.setString(3, password);
		ResultSet rs=ps.executeQuery();
		double mybalance=0.0;
		if(rs.next()) {
			mybalance=rs.getDouble(4);
		}
		double balance=mybalance-transferamount;
		double tran_acc_bal=balance;
		PreparedStatement ps1=con.prepareStatement("update sdfcbank set balance=? where account_no=? and name=? and password=?");
		ps1.setDouble(1, balance);
		ps1.setString(2, account_no);
		ps1.setString(3, name);
		ps1.setString(4, password);
		int i=ps1.executeUpdate();
		
		account_no=targetaccount;
		PreparedStatement ps2=con.prepareStatement("select *from sdfcbank where account_no=?");
		ps2.setString(1, account_no);
		ResultSet rs1=ps2.executeQuery();
		double mybalance1=0.0;
		if(rs1.next()) {
			mybalance1=rs1.getDouble(4);
		}
		balance=mybalance1+transferamount;
		PreparedStatement ps3=con.prepareStatement("update sdfcbank set balance=? where account_no=?");
		ps3.setDouble(1, balance);
		ps3.setString(2, account_no);
		int i1=ps3.executeUpdate();
		
		if(i>0) {
			out.print("<html><body><div style='border: 1px solid black; width:250px' align=center><h3 style='background-color: red;'>Account Info</h3>");
			out.print("<p>the target account balance is :"+ balance+"</br>"+"reduced account balance is :"+tran_acc_bal+"</p></div></body></html>");
			out.print("<a href=transfer.jsp>Back</a>");
			
		}else {
			out.print("<h1>Login Failed</h1>");
			out.print("<a href=transfer.jsp>Back</a>");
		}
		con.close();
	}catch(Exception ex) {
		out.print(ex);
	}
	%>
</body>
</html>