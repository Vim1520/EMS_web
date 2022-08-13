<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <!DOCTYPE html>
    <html>
    <head>
    <title>login</title>
    
    </head>
    <body>
    <form method='post' action="User.jsp">
            <h1>
                <center>Login</center>
            </h1>
            <table>
                <tr>
                    <td>Employee ID</td>
                    <td><input type="text" name="Employee_ID"></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Login"></td>
                </tr>
    
            </table>
    
        </form>
    </body>
    </html>