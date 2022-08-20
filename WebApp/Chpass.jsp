<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jshashes/1.0.7/hashes.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js" ></script>
</head>
<script>
  function checkSecPassword() {
    var password = document.getElementById("pass").value;
    var passwordDigest = new Hashes.SHA1().hex(password);
    var digestFive = passwordDigest.substring(0, 5).toUpperCase();
    var queryURL = "https://api.pwnedpasswords.com/range/" + digestFive;
    var checkDigest = passwordDigest.substring(5, 41).toUpperCase();
    var result;
  

    
  $.ajax({
      url: queryURL,
      type: 'GET',
      async: false,
      success: function(res) {
        if (res.search(checkDigest) >= 0){
          result = false;
          document.getElementById("result").innerHTML = "<h2> PassWord is not Safe ... Retry !!!</h2>"
        } else {
          result = true;
          //document.getElementById("result").innerHTML = "Result: PassWord is Safe"
        }
      }
    });
    return result;
  }
  </script>
<body>
<%
response.setHeader("Cache-Control", "private, no-store, no-cache, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0");
	
if(session.getAttribute("EmpID")==null)
	{
		response.sendRedirect("login.jsp");
	}
%>

<form action="Chpass" onsubmit="return checkSecPassword();" method="post" >
    
    <h3>------ Change Password ------</h3>
<table>
<tr>
<td>Enter New Password :</td>
<td><input id="pass" type="password" name="pass"></td></tr>
<tr>
 <b> <p style="color:rgb(44, 239, 44)">To USE a secure PassWord : </p>
      <ul>
         <li><p style="color:rgb(44, 239, 44)">Use at least one special character</li>
          <li><p style="color:rgb(44, 239, 44)">Use combinations of numbers and characters</li>
           <li><p style="color:rgb(44, 239, 44)">Don't use commonly used Words</li>
      </ul></b>   

</tr>
</TABLE><br>
<input type="submit" value="Submit">  
</form>
<p id="result"/>
</body>
</html>