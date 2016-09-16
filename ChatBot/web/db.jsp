<%@page import="java.sql.*"%>
<%
DriverManager.registerDriver(new com.mysql.jdbc.Driver()); //register driver for mysql db communication
//Connection con = DriverManager.getConnection("jdbc:mysql://localhost/chattest","root","mysql");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost/chattest","root",""); //create connection using driver

%>
