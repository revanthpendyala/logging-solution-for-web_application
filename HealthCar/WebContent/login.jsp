<%@ page import ="java.sql.*"
         import ="controller.*"
		 import ="model.*" %>
<%
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital",
            "root","30091997");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from members1 where uname='" + userid + "' and pass='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("home.jsp");
        CustomLog.log("validate_user",Message.LOG_INFO,userid+" - " + Message.VALID_LOGIN);
        
        
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
        CustomLog.log("validate_user",Message.LOG_INFO,userid+" - " + Message.INVALID_LOGIN);
    }
%>