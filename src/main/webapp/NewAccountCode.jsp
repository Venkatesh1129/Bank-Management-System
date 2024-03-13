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
	double balance=Double.parseDouble(request.getParameter("amount"));
	String address=request.getParameter("address");
	String mobile_no=request.getParameter("mno");
	
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/excelrdb","root","root");
		PreparedStatement ps=con.prepareStatement("insert into sdfcbank values(?,?,?,?,?,?)");
		ps.setString(1, account_no);
		ps.setString(2, name);
		ps.setString(3, password);
		ps.setDouble(4, balance);
		ps.setString(5, address);
		ps.setString(6, mobile_no);
		int i=ps.executeUpdate();
		if(i>0) {
			out.print("Account Successfully Created");
			out.print("<a href=newaccount.html>Back</a>");
		}else {
			out.print("<h1>Account Creation Failed</h1>");
			out.print("<a href=newaccount.jsp>Back</a>");
		}
		con.close();
	}catch(Exception ex) {
		out.print(ex);
		ex.printStackTrace();
	}
	%>
</body>
</html>