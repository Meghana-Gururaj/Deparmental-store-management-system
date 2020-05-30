
<html>
<head>
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
<%@ page import="java.sql.*"%>
<%@page import ="javax.sql.*" %>
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
String item=request.getParameter("item");
try 
{
	 Class.forName("com.mysql.jdbc.Driver").newInstance();
     java.sql.Connection con = DriverManager.getConnection
     ("jdbc:mysql://localhost:3306/mini?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&allowPublicKeyRetrieval=true&useSSL=false","root","01399");
     String Query="select * from items where iname=?";
     PreparedStatement preparestatement=con.prepareStatement(Query);
      preparestatement.setString(1,item);
      ResultSet rs=preparestatement.executeQuery();
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
</head>
</html>