<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>orders</title>
</head>
<body>

         <%@page import ="java.sql.*" %>
         <%@page import ="javax.sql.*" %>

<%   	 String name=request.getParameter("uname");
         String iid=request.getParameter("itemid");
         String q=request.getParameter("quantity");
        try{
              Class.forName("com.mysql.jdbc.Driver").newInstance();
              java.sql.Connection con = DriverManager.getConnection
              ("jdbc:mysql://localhost:3306/mini?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&allowPublicKeyRetrieval=true&useSSL=false","root","01399");
              PreparedStatement preparestatement=con.prepareStatement("{call item(?,?,?)}");
              preparestatement.setString(1,name);
              preparestatement.setString(2,iid);
              preparestatement.setString(3,q);
              preparestatement.execute();
              out.println("Successful in adding the data!");
       		}
         catch(SQLException e)
          {
              out.println("error in loading data");
              out.println(e);
          }
%>
</body>
</html>