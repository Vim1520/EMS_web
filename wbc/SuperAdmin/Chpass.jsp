
<HTML>
<HEAD>
<TITLE> Delete </TITLE>
</HEAD>
<body>
<%

response.setHeader("Cache-Control", "private, no-store, no-cache, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0");
	
if(session.getAttribute("EmpID")==null)
	{
		response.sendRedirect("/wbc/login.jsp");
	}



%>

<h3>------ Change Password ------</h3>
<form method="post" action="/wbc/Chpass">
<table>
<tr>
<td>Enter New Password :</td>
<td><input type="text"  name="pass"></td></tr>
</TABLE><br>
<input type="submit" value="Change">
</form>
</BODY>
</HTML>