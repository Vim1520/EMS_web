<%@ page language="java" %>
<%@ page language="java" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import=" java.io.IOException"%>
<%@ page import=" java.sql.*"%>
<% Class.forName("com.mysql.cj.jdbc.Driver");%>
<html>
<head>
<title>SuperAdmin</title>
</head>
<body>

<% 
response.setHeader("Cache-Control", "private, no-store, no-cache, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0");

String id=(String)request.getRemoteUser();
session = request.getSession();
session.setAttribute("EmpID",id);
if(session.getAttribute("EmpID")==null)
	{
		response.sendRedirect("/wbc/login.jsp");
	}
out.print(id);

    out.print(request.isUserInRole("2"));
if(!request.isUserInRole("2")){
    response.sendRedirect("/wbc/Redirect.jsp");
    }
%>


<center> <h2>Employee Management </h2></center>
<ol>
<h3><li><a href="SearchID.jsp">Search by ID</a></li>
<li><a href="SearchCat.jsp">Search by Category</a></li>
<li><a href="SearchRole.jsp">Search by Role</a></li>
<li><a href="Display.jsp">Display</a></li>
<li><a href="Exp.jsp">Export</a></li>
<li><a href="ClrExp.jsp">Clear Exports</a></li>
<li><a href="Chpass.jsp">Change Password</a></li>
<li><a href="Logout.jsp">LogOut</a></li>
</h3>
</ol>
 

</body>
</html>