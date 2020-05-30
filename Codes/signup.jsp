<html>
<head>
<title>signup</title>
</head>
<body>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
  
         <%@page import ="java.sql.*" %>
         <%@page import ="javax.sql.*" %>
         <%   
              
              
         String name=request.getParameter("uname");
         String email=request.getParameter("email");
         String password=request.getParameter("pass");
         String dob=request.getParameter("dob");
         String address=request.getParameter("addr");
         String phoneno=request.getParameter("num");
          try{
              Class.forName("com.mysql.jdbc.Driver").newInstance();
              java.sql.Connection con = DriverManager.getConnection
              ("jdbc:mysql://localhost:3306/mini?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&allowPublicKeyRetrieval=true&useSSL=false","root","01399");
              String sql="insert into mini.customer(uname,email,pass,dob,address,phoneno)values(?,?,?,?,?,?)";
              //String sql1="insert into mini.login(uname,pass)values(?,?)";
              PreparedStatement preparestatement=con.prepareStatement(sql);
              //PreparedStatement preparestatement1=con.prepareStatement(sql1);
             // preparestatement1.setString(1,name);
              //preparestatement1.setString(2,password);
              preparestatement.setString(1,name);
              preparestatement.setString(2,email);
              preparestatement.setString(3,password);
              preparestatement.setString(4,dob);
              preparestatement.setString(5,address);
              preparestatement.setString(6,phoneno);
              preparestatement.execute();
              //preparestatement1.execute();
              out.println("Successful in creating a USER!");
              }
              catch(SQLException e)
              {
              out.println("error in loading data");
              out.println(e);
              }
              %>
              </body>
              </html>