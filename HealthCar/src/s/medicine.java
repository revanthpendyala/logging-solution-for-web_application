package s;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import javax.servlet.annotation.WebServlet;

import controller.CustomLog;
import controller.Message;
@WebServlet("/medicine")
public class medicine extends HttpServlet {
    
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
	
        String medicines = request.getParameter("medicines");
      
        int mg = Integer.parseInt(request.getParameter("mg"));
        
        int quantity = Integer.parseInt(request.getParameter("quantity"));
		String Ename = request.getParameter("Ename");
		String state = request.getParameter("state");
		
		String city = request.getParameter("city");

		String address = request.getParameter("address");
		
		String pincode = request.getParameter("pincode");
		
		String payment = request.getParameter("payment");

        
        

       
        try{
        
        //loading drivers for mysql
        Class.forName("com.mysql.jdbc.Driver");

	//creating connection with the database 
          Connection con=DriverManager.getConnection ("jdbc:mysql://localhost/hospital?useSSL=false","root","30091997");

        PreparedStatement ps=con.prepareStatement("insert into medicine1 values(?,?,?,?,?,?,?,?,?)");

        ps.setString(1,medicines);
        ps.setInt(2,mg);
        ps.setInt(3,quantity);
        ps.setString(4,Ename);
        ps.setString(5,state);
		ps.setString(6,city);
		ps.setString(7,address);
		ps.setString(8,pincode);
		ps.setString(9,payment);
        int i=ps.executeUpdate();
        if(i>0)
          {
            out.println("Your order is succesfully placed");
            CustomLog.log("Order details",Message.LOG_INFO,Ename+" - " +Message.ORDER_SUCCESS);
             RequestDispatcher rs = request.getRequestDispatcher("home.jsp");
            rs.forward(request, response);
          }
		 else
		    out.println("Your order is unsuccessful");
        
			RequestDispatcher rs = request.getRequestDispatcher("medicines.jsp");
            rs.forward(request, response);
        
        }
        catch(Exception e)
        {
        	CustomLog.log(Message.DATABASE_CLASS, Message.LOG_FATAL, e.toString());

        }
	
      }
}