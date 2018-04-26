package s;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import javax.servlet.annotation.WebServlet;

import controller.CustomLog;
import controller.Message;
@WebServlet("/diagnosis")
public class diagnosis extends HttpServlet {
    
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
	
        String test = request.getParameter("test");
      
        String testtimings = request.getParameter("testtimings");
        
        

       
        try{
        
        //loading drivers for mysql
        Class.forName("com.mysql.jdbc.Driver");

	//creating connection with the database 
          Connection con=DriverManager.getConnection ("jdbc:mysql://localhost/hospital","root","30091997");

        PreparedStatement ps=con.prepareStatement("insert into diagnosis values(?,?)");

        ps.setString(1,test);
       
        ps.setString(2,testtimings);
        
        int i=ps.executeUpdate();
        if(i>0)
          {
            out.println("You are sucessfully registered testing time");
            CustomLog.log("your test timing",Message.LOG_INFO, Message.TEST_BOOKED);
             RequestDispatcher rs = request.getRequestDispatcher("home.jsp");
            rs.forward(request, response);
          }
        
        }
        catch(Exception e)
        {
        	CustomLog.log(Message.DATABASE_CLASS, Message.LOG_FATAL, e.toString());

        }
	
      }
}