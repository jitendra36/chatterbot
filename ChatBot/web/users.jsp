<%
try{
%>
<%@include file="db.jsp" %>
<%
out.println("<h2>Users</h2>");
Statement st1 = con.createStatement();
ResultSet rs11 = st1.executeQuery("SELECT name FROM chatters");
while(rs11.next()){
out.println("<div class='user'>"+rs11.getString("name")+"</div>");
}
}
catch(Exception erjkl){}
%>
