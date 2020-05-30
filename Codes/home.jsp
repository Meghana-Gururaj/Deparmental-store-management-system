<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>items</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<style>
.content-table {
  border-collapse: collapse;
  margin: auto;
  font-size: 1.5em;
  min-width: 400px;
  border-radius: 5px 5px 0 0;
  overflow: hidden;
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}

.content-table thead tr {
  background-color: #009879;
  color: #ffffff;
  text-align: left;
  font-weight: bold;
}

.content-table th,
.content-table td {
  padding: 12px 15px;
}

.content-table tbody tr {
  border-bottom: 1px solid #dddddd;
}

.content-table tbody tr:nth-of-type(even) {
  background-color: #f3f3f3;
}

.content-table tbody tr:last-of-type {
  border-bottom: 2px solid #009879;
}

.content-table tbody tr.active-row {
  font-weight: bold;
  color: #009879;
}
</style>
</head>
<body style="background-image: url(items.jpg);background-size: 100%; background-repeat: no-repeat center fixed;">

 <div class="container">
        <nav class="navbar navbar-default navbar-inverse navbar-fixed-top">
		<ul class="nav navbar-nav">
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
<br><br><br>
<center><label>SEARCH</label>
<form method="post" action="eg.jsp">
<input type="text" name="item"> 
</form></center>
<table class="content-table" style="text-align:center">
<center><h1><b>ITEMS LIST</b></h1></center>
<center>
<thead>
<tr><th>ITEM ID</th>
	<th>ITEM NAME</th>
	<th>QUANTITY</th>
	<th>PRICE</th>
	</tr>
</thead>
<%
 try
{
	 Class.forName("com.mysql.jdbc.Driver").newInstance();
     java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mini?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&allowPublicKeyRetrieval=true&useSSL=false", "root", "01399");
     String Query="select * from items"; 
     PreparedStatement psm=conn.prepareStatement(Query);
     ResultSet rs=psm.executeQuery();
     while(rs.next())
     {
    	 %>
    	 <tr>
    	 <td><%=rs.getInt("itemid") %></td>
    	 <td><%=rs.getString("iname") %></td>
    	 <td><%=rs.getInt("quantity") %></td>
    	 <td><%=rs.getInt("price") %></td>
    	 </tr><%
     }
}
catch(Exception ex)
{
	out.println("ex");
}
%>
</font>
</center>
</table>
</body>
</html>