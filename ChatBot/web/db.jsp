<%@page import="java.sql.*"%>
<% 
    
   DriverManager.registerDriver( new com.mysql.jdbc.Driver()); // register jbdc driver 
   Connection con = DriverManager.getConnection("jdbc:mysql://localhost/chattest","root","mysql"); //create connection using driver
   // TODO How to do try/catch exception through pages, so that code is visible in others 
%>
