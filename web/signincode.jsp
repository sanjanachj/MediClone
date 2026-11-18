<%@page import="java.sql.DriverManager,java.sql.ResultSet" %>   
<%@page import="java.sql.Connection,java.sql.PreparedStatement" %>

<%         String patientid=request.getParameter("userid");
               String password=request.getParameter("userpassword");
               Class.forName("com.mysql.cj.jdbc.Driver");
               Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root",System.getenv("MEDICLONE_DB_PASSWORD"));
                PreparedStatement ps=connection.prepareStatement("select * from mdcsignup where pid=? and pwd=? ");
                ps.setString(1,patientid);
                ps.setString(2,password);
                ResultSet rs=ps.executeQuery();
                if(rs.next())
                {
                    response.sendRedirect("Pdashboard.jsp");
                }
                else
                {
                        out.println("invalid password ");
                }            
                connection.close();
%>
