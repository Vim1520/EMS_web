<%@ page language="java" %>
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<% Class.forName("com.mysql.cj.jdbc.Driver");%>
<html>
<head>
<title>USER</title>
</head>
<body>

<% 
response.setHeader("Cache-Control", "private, no-store, no-cache, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0");
%>
<center><H1> Employee Details </H1>
       
<center><table cellspacing="18">
<tr>
<h3><b><a href="Chpass.jsp">1.Change Password</a></b></tr></h3><tr>
<h3><b><a href="Logout.jsp">2.LogOut</a></tr></b></h3>
</table></center>
</body>
</html>