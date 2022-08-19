import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.rowset.serial.SerialException;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;

public class Login extends HttpServlet{


protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException , IOException{
		
		
				if(req.isUserInRole("1")){
					page="/SuperAdmin/SuperAdmin.jsp";
				}
				else if(rs.getInt(1)==2){
					page="/Admin/Admin.jsp";
				}
				else{
					page="/User/User.jsp";
				}
			
		//res.sendRedirect(page);
		req.getRequestDispatcher(page).include(req, res);
	}
}

