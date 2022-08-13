<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<% Class.forName("com.mysql.cj.jdbc.Driver");%>
<!DOCTYPE html>
<html>
<head>
<title>Employee Management</title>
</head>
<body>
<h1><center>Employee Management System</center></h1><br>
<center><h3> Employee Management System to manage the details of Employees !!!! </h3></center>
<%			int j=0;
           Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/employeedb","root","Vimal@2002"); 
           Statement statement = connection.createStatement() ;
          ResultSet resultset = statement.executeQuery(" select * from EmployeeDB ") ;
          if(resultset.next()){
          	j++;
          }
          if(j>0){
          	response.sendRedirect("login.jsp");
          }
          else{
          	response.sendRedirect("newDet.jsp");
          }
       %>
	
	
</div>
</body>
</html>