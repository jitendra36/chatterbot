
<%
    //view for chat query send
try{
    %>

    <%
String user = session.getAttribute("user").toString(); //get current username
%>

<h2>Room For ALL</h2>
 <a class="msg_container" href="logout.jsp">Clear Log</a>
 <div class="msgs">
  <%@include file="msgs.jsp" %>
 </div>
 <form id="msg_form">
  <input class="msg_input" name="msg" size="60" type="text"/>
  <button class="button_send">Send</button>
 </form>
<%
}
catch(Exception ee){

}
%>
