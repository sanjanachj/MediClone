<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection,java.sql.PreparedStatement"%>
<%
    String patientid=request.getParameter("pid");
     String did=request.getParameter("did");
      String symp=request.getParameter("sym");
       String contact=request.getParameter("cont");
       String DOB=request.getParameter("dob");
       String age=request.getParameter("age");
       String gender=request.getParameter("gen");
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root",System.getenv("MEDICLONE_DB_PASSWORD"));
        PreparedStatement ps=connection.prepareStatement("insert into appoint values(?,?,?,?,?,?,?)");
        ps.setString(1,patientid);
        ps.setString(2,did);
        ps.setString(3,symp);
        ps.setString(4,contact);
        ps.setString(5,DOB);
        ps.setString(6,age);
        ps.setString(7,gender);
        ps.executeUpdate();
        response.sendRedirect("Pdashboard.jsp");
        connection.close();
%>
