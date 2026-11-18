<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection,java.sql.PreparedStatement"%>
<%
    String fullname=request.getParameter("fnm");
     String city=request.getParameter("city"); 
     String contact=request.getParameter("contact");
       String mailid=request.getParameter("mail");
       String enquiry=request.getParameter("enquiry");
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root",System.getenv("MEDICLONE_DB_PASSWORD"));
        PreparedStatement ps=connection.prepareStatement("insert into mdcontact values(?,?,?,?,?)");
        ps.setString(1,fullname);
        ps.setString(2,city);
        ps.setString(3,contact);
        ps.setString(4,mailid);
        ps.setString(5,enquiry);
        ps.executeUpdate();
        response.sendRedirect("signin.jsp");
        connection.close();
%>

