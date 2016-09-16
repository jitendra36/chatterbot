
<%
 try{
     //call connection
     %>
<%@include file="db.jsp" %>
<%
Statement stt = con.createStatement(); //create statement to be used
ResultSet ss = stt.executeQuery("select * from messages"); //query
while(ss.next()){ //on execution loop
out.println("<div class='msg' title='"+ss.getString("posted")+"'><span class='name'>"+ss.getString("name")+"</span> : <span class='msgc'>"+ss.getString("msg")+"</span></div>");
//printing all messages
}
//try{
String uuser = session.getAttribute("user").toString(); //get if user logged
//}
//catch(Exception nfg){
if(uuser.isEmpty()){
out.println("<script>window.location.reload()</script>"); //not logged then force to logged in automatically
}
 }catch(Exception fsdids){}
%>

