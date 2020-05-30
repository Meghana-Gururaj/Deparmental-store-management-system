<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <%@page import ="java.sql.*" %>
<%@page import ="javax.sql.*" %>
<%   
String name=request.getParameter("name");
String rating=request.getParameter("rating");
String remarks=request.getParameter("remarks");
try{
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    java.sql.Connection con = DriverManager.getConnection
    ("jdbc:mysql://localhost:3306/mini?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&allowPublicKeyRetrieval=true&useSSL=false","root","01399");
    String sql="insert into mini.rate(name,rating,remarks)values(?,?,?)";
    PreparedStatement preparestatement=con.prepareStatement(sql);
    preparestatement.setString(1,name);
    preparestatement.setString(2,rating);
    preparestatement.setString(3,remarks);
    preparestatement.execute();
    out.println("Thankyou for your remarks");
    }
    catch(SQLException e)
    {
    out.println("error in loading data");
    out.println(e);
    }
%>
</body>
</html>