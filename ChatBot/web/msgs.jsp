
<%
try{
     //call connection
     %>
<%@include file="db.jsp" %> <!-- including database connector--> 
<%
    Statement stt = con.createStatement(); //create statement to be used
    ResultSet ss = stt.executeQuery("select * from messages"); //query
    while(ss.next()){ //on execution loop
        out.println("<div class='msg' title='"+ss.getString("posted")+"'><span class='name, align-left'>"+ss.getString("name")+"</span> : <span class='msgc, align-left'>"+ss.getString("msg")+"</span></div>");
        //printing all messages
    }
}
catch(Exception fsdids){}
%>

