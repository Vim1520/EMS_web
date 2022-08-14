
<!DOCTYPE html>
<html>
<head>
<title>login</title>

</head>
<body>

<%

response.setHeader("Cache-Control", "private, no-store, no-cache, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0");
%>



	<form action="/wbc/Logout">
		<h1>
		<center>LogOut</center>
		</h1>
		<center>Are You Sure You want to Logout?
		<table><tr><td><input type="submit" value="/wbc/Logout"></td>
		</tr>
		</center>
		</table>

	</form>
</body>
</html>




