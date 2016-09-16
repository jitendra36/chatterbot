<%
try{
%>
<%@include file="db.jsp"%> 

<%
out.println("<h2><center>Users</center></h2> "); // Header of User table 
Statement st1 = con.createStatement();  //create statement
ResultSet rs11 = st1.executeQuery("SELECT name FROM chatters"); //create SQL
while(rs11.next()){ //create loop to fetch data
out.println("<div class='user'>"+rs11.getString("name")+"</div>"); //print name if needed
}
}
catch(Exception erjkl){}
%>
