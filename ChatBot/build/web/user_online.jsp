
<%
try{
    //include db
    %>
<%@include file="db.jsp" %>
<%
String user = session.getAttribute("user").toString(); //check user
Statement sstt1 = con.createStatement(); //create statement
ResultSet rsd1 = sstt1.executeQuery("SELECT name FROM chatters WHERE name='"+user+"'"); //execute query
if(rsd1.next()){
    PreparedStatement psy = con.prepareStatement("UPDATE chatters SET seen=NOW() WHERE name=?"); //prepare sql query
    psy.setString(1, user); //set value
    psy.executeUpdate(); //execute update
}
else{
    PreparedStatement psy = con.prepareStatement("INSERT INTO chatters (name,seen) VALUES (?,NOW())"); //prepare query
    psy.setString(1, user); //set placeholder value
    psy.executeUpdate();//execute query
}
}
catch(Exception exx){

}



%>

