<%@ page language="java" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import=" java.io.IOException"%>
<%@ page import=" java.sql.*"%>
<% Class.forName("com.mysql.cj.jdbc.Driver");%>
<HTML>
<HEAD>
<TITLE> Export Details </TITLE>
</HEAD>
<body>
<% 
response.setHeader("Cache-Control", "private, no-store, no-cache, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0");
int id2=0;
ResultSet resultset;
Connection connection=null;
PreparedStatement statement=null;
if(session.getAttribute("EmpID")==null)
{	
response.sendRedirect("Login.jsp");
}

else{
String id=(String)session.getAttribute("EmpID");
id2=Integer.parseInt(id);
}try{
if((!request.isUserInRole("1"))&&(!request.isUserInRole("2"))){
	response.sendRedirect("/wbc/Redirect.jsp");
		}
	}
catch(Exception e){
//response.sendRedirect("Login.jsp");
}

%>

<h3>-------- Enter ID to Export --------</h3>
<form method="post" action="/wbc/Exp">
<table>
<tr>
<td>Enter Employee ID :</td>
<td><input type="text" name="Id"></td></tr>
</TABLE><br>
<input type="submit" value="Export">
</form>
</BODY>
</HTML>