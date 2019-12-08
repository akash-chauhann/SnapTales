<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
</style>
</head>
<body>
 <h3 align="center"><b>Contact Us</b></h3>
<br><br>
<table class="table table-bordered">
    <thead>
      <tr>
        <th>id</th>
        <th>Name</th>
        <th>Phone Number</th>
        <th>email</th>
        <th>event</th>
        <th>message</th>
      </tr>
    </thead>
    <% try
    {
    	Class.forName("com.mysql.jdbc.Driver");
			Connection con1=DriverManager.getConnection("jdbc:mysql://snaptales.cap4ub3juflu.ap-south-1.rds.amazonaws.com:3306/snaptales","root","root");
			Statement st1=con1.createStatement();
			ResultSet rs=st1.executeQuery("select * from contact");
    while(rs.next())
    {
    %><tbody>
      <tr>
        <td><%= rs.getInt(1)%></td>
        <td><%= rs.getString(2)%></td>
        <td><%= rs.getString(3)%></td>
        <td><%= rs.getString(4)%></td>
        <td><%= rs.getString(5)%></td>
        <td><%= rs.getString(6)%></td>
      </tr>
     
    </tbody>
  <%}}catch(Exception ee)
    {
	  System.out.println(ee);
    }
    %>
  </table>

</body>
</html>