<%@include file="db.jsp" %>
<%
String user  = session.getAttribute("user").toString();//get is user registered
PreparedStatement ps = con.prepareStatement("delete from chatters where name=?"); //prepare statement to delete all data for chatters
ps.setString(1, user); //set placeholder values
ps.executeUpdate(); //execute query
PreparedStatement pd = con.prepareStatement("delete from messages"); //delete all messages
pd.executeUpdate(); //execute query
session.invalidate(); //remove sessions
response.sendRedirect("index.jsp"); //redirect to index page
%>

