package s;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import javax.servlet.annotation.WebServlet;

import controller.CustomLog;
import controller.Message;


@WebServlet("/logout")
public class logout extends HttpServlet {
    public void doPost(HttpServletRequest req, HttpServletResponse res)throws ServletException, IOException
	{
        
              HttpSession session = req.getSession();  
                    session.removeAttribute("Username"); 
					session.invalidate();
					res.sendRedirect("index.jsp");
				
					CustomLog.log("-user Logging out",Message.LOG_INFO,Message.LOGGED_OUT);
	}
}
