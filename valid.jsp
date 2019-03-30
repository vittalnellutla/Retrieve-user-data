<%@page language="java" import="java.sql.*,java.io.*,java.util.*"%>
<html>
<head>
<title>See Result</title>
</head>
<body bgcolor="#9999CC">
<form action="http://localhost:8080/StudRetrieve/testing.html" method="POST" >
<center>
<br>
<br>
<br>
<br> 
<h1><u>Result</u></h1>
 <h2>
<%
Connection con=null;
Statement st=null;
ResultSet rs=null;
String hn; 
try{
   Class.forName("com.mysql.jdbc.Driver");
   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/students","root","root");
   st= con.createStatement();
   rs= st.executeQuery("select * from STUDDET");
   hn = request.getParameter("1");
   while(rs.next()) 
   {
       if (hn.equals(rs.getString(2))) {
	 out.print("Hall Ticket Number: "+rs.getString(2));%><br><%
	 out.print("Student Name: "+rs.getString(1));%><br><%
	 out.print("Branch:  "+rs.getString(3));%><br><%
	 out.print("TOTAL: "+rs.getString(4));%><br><%
	// out.print("subject3: "+rs.getString(6));%><br><%
	// out.print("subject4:  "+rs.getString(7));%><br><%
	// out.print("subject5: "+rs.getString(8));%><br><%
	// out.print("subject6: "+rs.getString(9));%><br><%
	// out.print("Total Grade:  "+rs.getString(10));%><br><%
	 break; }	
   }
	    
}
catch(Exception e){
	out.print(e);
}
%></div></h2></color>
<button onclick="window.location.href='C:/Program Files/Apache Software Foundation/Tomcat 8.5/webapps/StudRetrieve/testing.html'">Go Home Page</button>
</body>