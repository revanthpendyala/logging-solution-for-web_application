package s;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import javax.servlet.annotation.WebServlet;

import controller.CustomLog;
import controller.Message;
@WebServlet("/hospital")
public class hospital extends HttpServlet {
    
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
	
        String firstname = request.getParameter("firstname");
      
        String lastname = request.getParameter("lastname");
        
        String email = request.getParameter("email");
        
        String password = request.getParameter ("password");

       
        try{
        
        //loading drivers for mysql
        Class.forName("com.mysql.jdbc.Driver");

	//creating connection with the database 
          Connection con=DriverManager.getConnection ("jdbc:mysql://localhost/hospital?useSSL=false","root","30091997");

        PreparedStatement ps=con.prepareStatement("INSERT INTO user1 (firstname,lastname,email,password) VALUES (?, ?, ?, ?)");

        ps.setString(1,firstname);
        ps.setString(2,lastname);
        ps.setString(3,email);
		ps.setString(4,password);
        int i=ps.executeUpdate();
        if(i>0)
          {
        	
        	CustomLog.log("validate_user",Message.LOG_INFO,email+" - " + Message.REGISTERED);
        	RequestDispatcher rs = request.getRequestDispatcher("login.jsp");
             rs.forward(request, response);
          }
        
        }
        catch(Exception e)
        {
        	CustomLog.log(Message.DATABASE_CLASS, Message.LOG_FATAL, e.toString());
        	CustomLog.log(Message.DATABASE_CLASS, Message.LOG_INFO, "Registration unsuccessfull");
        }
	
      }
}