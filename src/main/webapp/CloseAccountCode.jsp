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
	
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/excelrdb","root","root");
		PreparedStatement ps=con.prepareStatement("select *from sdfcbank where account_no=? and name=? and password=?");
		ps.setString(1, account_no);
		ps.setString(2, name);
		ps.setString(3, password);
		ResultSet rs=ps.executeQuery();
		if(rs.next()) {
			out.print("<h1>Logout Successfully</h1>");
			out.print("<a href=home.jsp>Back</a>");
		}else {
			out.print("Account not found");
			out.print("<a href=home.jsp>Back</a>");
		}
		con.close();
	}catch(Exception ex) {
		out.print(ex);
	}
	%>
</body>
</html>