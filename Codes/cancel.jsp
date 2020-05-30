<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
         <%@page import ="java.sql.*" %>
         <%@page import ="javax.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%   String name=request.getParameter("uname");
         String iid=request.getParameter("itemid");
        try{
              Class.forName("com.mysql.jdbc.Driver").newInstance();
              java.sql.Connection con = DriverManager.getConnection
              ("jdbc:mysql://localhost:3306/mini?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&allowPublicKeyRetrieval=true&useSSL=false","root","01399");
              String query="delete from orders where uname=? and itemid=? ";
              PreparedStatement preparestatement=con.prepareStatement(query);
              preparestatement.setString(1,name);
              preparestatement.setString(2,iid);
              preparestatement.executeUpdate();
              out.println("Successful in deleting the item!");
       		}
         catch(SQLException e)
          {
              out.println("error in loading data");
              out.println(e);
          }
%>
</body>
</html>