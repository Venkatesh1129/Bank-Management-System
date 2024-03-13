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
		ResultSetMetaData rsmd=rs.getMetaData();
		int n=rsmd.getColumnCount();
		if(rs.next()) {
			out.print("<table border=2><tr>");
			for(int i=1;i<=n;i++) {
				out.print("<th><font size=5>"+rsmd.getColumnName(i)+"</th>");
			}
			out.print("</tr>");
			out.print("<tr>");
			do {
				for(int i=1;i<=n;i++) {
					out.print("<td>"+rs.getString(i)+"</td>");
				}
				out.print("</tr>");
				
			} while(rs.next());
			out.print("</table><br>");
			out.print("<a href=balance.jsp>Back</a>");
		}else {
			out.print("<h1>Login Failed</h1>");
			out.print("<a href=balance.jsp>Back</a>");
		}
		con.close();
	}catch(Exception ex) {
		out.print(ex);
	}
	%>
</body>
</html>