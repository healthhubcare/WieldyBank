<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*;" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>NEFT_Transaction</title>
<style>
.sub{
border:none;
text-decoration: underline;
}
</style>
</head>
<body 
>
<style>
*{
	font-family:Times New Roman;
	margin:0;
	padding:0;
	
}
.main{
	width:100%;
	height:100%;	
}
.logo{
	
   margin-top:-10px;
    margin-left: 1px;
    height: 100px;
    transition: .5%;
    background-color:#0001; 
    filter: saturation (90 deg);
}

nav ul li{
	   float:left;
	   width:170px;
	   height:40px;
	   background-color:#0000;   
	 opacity:0.8;
	 line-height:100px;
	 text-align:center;
	display:inline-table;
	transition:0.5s all;
	font-size: 20px;
}
nav ul li ul li{
	
	line-height:40px;
	height:40px;
	
}
nav ul li ul li a{
	display: inline-table;
	}
nav ul{
	margin:0px;
	padding:0px;
	list-style:none;
	float:right;
}
 
nav ul li a{
	text-decoration: none;
	color:black;
	padding:10px;
	font-size: medium;
    font-family: fantasy;
}
nav ul li:hover{
	background-color:#eee3ca;
}
nav ul li ul li{
	display: none;
}
nav ul li:hover ul li{
	display: block;
}
</style>
<body style=
"background-image: url(./Images/final.jpg);
   background-size:cover;
  background-position: center;
  background-repeat: no-repeat;
  background-attachment: fixed;">
<div class="main">
<nav>
<div class="logo">
<img src="./Images/logo.png" alt="No image"  width="150" height="100px">
<ul>
     <li><a href="#">My Profile</a></li>
     <li><a href="checkbalance.jsp">Mini Statement</a></li>
<li><a href="#">Transaction</a>
<ul>
  <li><a href="">NEFT</a></li>
   <li><a href="">IMPS</a></li>
</ul>
</li>
<li><a href="loanhome.jsp">Loan</a></li>
<li><a href="#">Update?</a>
<ul>
  <li><a href="Password.jsp">Change Password?</a></li>
   <li><a href="mobile.jsp">Update mobile number</a></li>
      <li><a href="mail.jsp">Update Mail Id</a></li>
   
</ul>
</li>
<li><a href="Logoutservlet">Logout</a></li>
</ul>
</nav>
<form><form name="NEFT-form" action="NEFT_Ser" method="post">
<table align="center">
<tr><td>Source Account Number</td>  <td><select name="source_Acc">
                 <option value="0">Source Account Number</option>
                 <%
                 try{
                	 DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
                	 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
                	 Statement st=con.createStatement();
                	 ResultSet rs=st.executeQuery("select distinct BENEFICIARY_ID from priya1996.Beneficiary");
                	 while(rs.next())
                	 {
                		 %>
                		 <option value="<%=rs.getString("BENEFICIARY_ID") %>"><%=rs.getString("BENEFICIARY_ID") %></option>
                		 <%
                	 }
                 }
                 catch(Exception e)
                 {
                	 e.printStackTrace();
                 }
                 %>
                 </select></td></tr>
<tr><td>Beneficiary ID</td>  <td><select name="bef_list">
                 <option value="0">Beneficiary ID</option>
                 <%
                 try{
                	 DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
                	 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
                	 Statement st=con.createStatement();
                	 ResultSet rs=st.executeQuery("select distinct BENEFICIARY_ID from priya1996.Beneficiary");
                	 while(rs.next())
                	 {
                		 %>
                		 <option value="<%=rs.getString("BENEFICIARY_ID") %>"><%=rs.getString("BENEFICIARY_ID") %></option>
                		 <%
                	 }
                 }
                 catch(Exception e)
                 {
                	 e.printStackTrace();
                 }
                 %>
                 </select></td></tr>
<tr><td>IFSC Code for Distination Account</td><td><select name="ifsc">
                 <option value="0">Select IFSC</option>
                 <%
                 try{
                	 DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
                	 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
                	 Statement st=con.createStatement();
                	 ResultSet rs=st.executeQuery("select distinct IFSC from priya1996.Beneficiary");
                	 while(rs.next())
                	 {
                		 %>
                		 <option value="<%=rs.getString("IFSC") %>"><%=rs.getString("IFSC") %></option>
                		 <%
                	 }
                 }
                 catch(Exception e)
                 {
                	 e.printStackTrace();
                 }
                 %>
                 </select></td></tr>

<tr><td>Destination Account No</td><td><select name="bef_AccNo">
                 <option value="0">Account Number</option>
                 <%
                 try{
                	 DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
                	 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
                	 Statement st=con.createStatement();
                	 ResultSet rs=st.executeQuery("select distinct ACCOUNT_NUMBER from priya1996.Beneficiary");
                	 while(rs.next())
                	 {
                		 %>
                		 <option value="<%=rs.getString("ACCOUNT_NUMBER") %>"><%=rs.getString("ACCOUNT_NUMBER") %></option>
                		 <%
                	 }
                 }
                 catch(Exception e)
                 {
                	 e.printStackTrace();
                 }
                 %>
                 </select></td></tr>

<tr><td>Beneficiary Name</td> <td><select name="bef_Name">
                 <option value="0">Beneficary Name</option>
                 <%
                 try{
                	 DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
                	 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
                	 Statement st=con.createStatement();
                	 ResultSet rs=st.executeQuery("select BENEFICIARY_NAME from priya1996.Beneficiary");
                	 while(rs.next())
                	 {
                		 %>
                		 <option value="<%=rs.getString("BENEFICIARY_NAME") %>"><%=rs.getString("BENEFICIARY_NAME") %></option>
                		 <%
                	 }
                 }
                 catch(Exception e)
                 {
                	 e.printStackTrace();
                 }
                 %>
                 </select></td></tr>
<tr><td>Transfer Amount</td><td><input type="text" name="trans_amount"></td></tr>
<tr><td>Remarks</td><td><input type="text" name="Remark"></td></tr> 
<tr><td><input type="submit" value="Transfer" class="sub" name="action"></td>
<td><a href="NEFT.jsp">Clear</a></td></tr>
</table>
</form>
</body>
</html>