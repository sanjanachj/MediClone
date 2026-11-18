<%@page import="java.sql.DriverManager,java.sql.ResultSet" %>   
<%@page import="java.sql.Connection,java.sql.PreparedStatement" %>
<% 
            String patientId=request.getParameter("userid");
            String oldPassword=request.getParameter("opass");
            String newPassword=request.getParameter("npass");
            String confirmPassword=request.getParameter("cpass");
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root",System.getenv("MEDICLONE_DB_PASSWORD"));
            PreparedStatement ps=connection.prepareStatement("select * from mdcsignup where pid=? and pwd=? ");
            ps.setString(1,patientId);
            ps.setString(2,oldPassword);
            ResultSet rs=ps.executeQuery();
                if(rs.next())
                {
                   if(newPassword.equals(confirmPassword)){
                                PreparedStatement ps1=connection.prepareStatement("update mdcsignup set pwd=? where pid=? ");
                                ps1.setString(1,newPassword);
                                ps1.setString(2,patientId);
                                ps1.executeUpdate();
                                response.sendRedirect("signin.jsp");
                        }
                        else{
                                out.println(" new password and confirm new password does not match");
                        }
                }
                else
                {
                        out.println("invalid password or old password");
                }            
                connection.close();
                
%>