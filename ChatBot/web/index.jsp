<!-- first page to provide base for all required pages -->
<%@include file="login.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <script src="jquery-1.11.1.min.js" type="text/javascript"></script>
        <script src="chat.js"></script>
        <link href="chat.css" rel="stylesheet"/>
        <title>:: CHATTERBOT ::</title>
    </head>
    <body>
        <div id="content" style="margin-top:10px;height:100%;">
        <div class="chat">
    
            <center><div class="chatbox">
            <center><h1>Chatterbot Project - Master Thesis</h1></center>
            <%
            try{
                //fetch if user is registered by chatterbot or not
                String ussser = session.getAttribute("user").toString();
                //if registered call chatbox
            %>
            <%@include file="chatbox.jsp" %>
            <%
            }
            catch(Exception e){
             //else call login.jsp to register the user
            %>
            <%@include file="login.jsp" %>
            <%
            }finally{}
            %>

            </div></center>
        </div>
        </div>
    </body>
</html>
