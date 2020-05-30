<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact us</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
</head>
<body style="background-image: url(p.jpg);background-size: 100% ; background-repeat: no-repeat center fixed;">
<div class="container">
<nav class="navbar navbar-default navbar-inverse navbar-fixed-top">
<div class="navbar-header">
<a href="#" class="navbar-brand">DEPARTMENTAL STORE</a></div>
<ul class="nav navbar-nav">
        <li><a href="home.jsp">Items</a></li>
        <li><a href="order.html">Create Order</a></li>
        <li><a href="orderplaced.html">Cart</a></li>
        <li><a href="cancelorder.html">Drop Items</a></li>
        <li><a href="contact.jsp">Contact us</a></li>
        <li><a href="rating.html">Rate us</a></li>
        <li><a href="index.jsp">Logout</a></li>
</ul>
</nav>
</div>
<br><br><br><br>
<font color="red"><center><b><h1>CONTACT DETAILS</h1></b></center></font><br><br>
<font color="black" size=5>
<table border=0 align="center">
<tr><th>NAME &nbsp;&nbsp;</th>
	<th>PHONE NUMBER</th>
</tr>
</font>
<%
 try
{
	 Class.forName("com.mysql.jdbc.Driver").newInstance();
     java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mini?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&allowPublicKeyRetrieval=true&useSSL=false", "root", "01399");
     String Query="select * from contact"; 
     PreparedStatement psm=conn.prepareStatement(Query);
     ResultSet rs=psm.executeQuery();
     while(rs.next())
     {
    	 %>
    	 <tr>
    	 <td><%=rs.getString("name") %></td>
    	 <td><%=rs.getLong("phoneno") %></td>
    	 </tr><%
     }
}
catch(Exception ex)
{
	out.println("ex");
}
%>
</body>
</html>