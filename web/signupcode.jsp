 <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection,java.sql.PreparedStatement"%>
<%
    String patientid=request.getParameter("pid");
     String pwd=request.getParameter("pwd"); 
     String fnm=request.getParameter("fnm");
      String city=request.getParameter("city");
       String contact=request.getParameter("cont");
       String DOB=request.getParameter("dob");
       String mail=request.getParameter("mail");
       String gender=request.getParameter("gen");
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root",System.getenv("MEDICLONE_DB_PASSWORD"));
        PreparedStatement ps=connection.prepareStatement("insert into mdcsignup values(?,?,?,?,?,?,?,?)");
        ps.setString(1,patientid);
        ps.setString(2,pwd);
        ps.setString(3,fnm);
        ps.setString(4,city);
        ps.setString(5,DOB);
        ps.setString(6,mail);
        ps.setString(7,gender);
        ps.setString(8,contact);
        ps.executeUpdate();
        response.sendRedirect("signin.jsp");
        connection.close();
%>
