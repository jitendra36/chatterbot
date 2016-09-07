
<%--<%@include file="db.jsp" %>--%>

<%
try{
    %>
    <%--<%@include file="db.jsp" %>--%>
    <%
String user = session.getAttribute("user").toString();
%>

<h2>Room For ALL</h2>
 <a style="right: 20px;top: 20px;position: absolute;cursor: pointer;" href="logout.jsp">Log Out</a>
 <div class='msgs'>
  <%@include file="msgs.jsp" %>
 </div>
 <form id="msg_form">
  <input name="msg" size="30" type="text"/>
  <button>Send</button>
 </form>
<%
}
catch(Exception ee){

}
%>
