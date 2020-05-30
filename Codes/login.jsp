<html>
<head>
<title>login</title>
</head>
<body>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
        <%
            String uid = request.getParameter("uname");
            String pswd = request.getParameter("pass");
            try{
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mini?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&allowPublicKeyRetrieval=true&useSSL=false", "root", "01399");
            String Query="select * from login where uname=? and pass=?";
            PreparedStatement psm=conn.prepareStatement(Query);
            psm.setString(1,uid);
            psm.setString(2,pswd);
           
            ResultSet rs=psm.executeQuery();
            if(rs.next())
            {
            response.sendRedirect("home.html");
            }                  
                else
              { 
                	out.println("login failed,try again");	
                  
              }
            
            }
            catch(Exception e)
              {
              out.println(e);
              }
%>
</body>
</html>