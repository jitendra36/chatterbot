<%@page import="com.parse.tagTextToFile"%>
<%
try{
//    call connection to used
    %>
<%@include file="db.jsp" %>
<%
String user = session.getAttribute("user").toString();    //get current user
String msg = request.getParameter("msg"); //get message from user
System.out.println("Got: "+msg); //system check
PreparedStatement psd = con.prepareStatement("INSERT INTO messages (name,msg,posted) VALUES (?,?,NOW())"); //prepare SQL query
psd.setString(1, user); // set placeholder value
psd.setString(2, msg);  //set placeholder value
psd.executeUpdate(); //execute SQL query

String msg1 = msg.replaceAll("\\?","");

//fetch priority
String ands = ""; // hold answer by processing
Statement ste1 = con.createStatement();
ResultSet rster1 = ste1.executeQuery("select * from `priorq`"); //select if priority have answers
while(rster1.next()){   //start fetch loop
String q = rster1.getString("qq"); //get questions
if(q.contains(msg1)){ //match is questions contain query
ands = rster1.getString("ans"); //matched then get answer
}
}
if(!ands.isEmpty()){ //check if answer found
PreparedStatement pdf = con.prepareStatement("INSERT INTO messages (name,msg,posted) VALUES (?,?,NOW())");
pdf.setString(1,"ChatBot");
pdf.setString(2, ands);
pdf.executeUpdate();

}
else{
    //process the query and find opinion target

//else priority processed

System.out.println("Masg1 is: "+msg1);
if(!msg1.isEmpty()){
    
    //start pos
    
    tagTextToFile tf = new tagTextToFile(); //call tegor class to tokenize and tag to query
                      String tg = tf.tags(msg1); //split
//                      out.println(tg);
                      String tp[] = tg.split("\\s"); //remove spaces
                      String noun = ""; //initialize
                      String adjec = ""; //initialize
                      String verb = ""; //initialize
                      for(String s:tp){ //foreach to seperate
                          if(s.contains("_NN")){
                              System.out.println(s);
                              s = s.replaceAll("_NNS", "");
                              s = s.replaceAll("_NNP", "");
                              s = s.replaceAll("_NNPS", "");
                          s = s.replaceAll("_NN", "");
                          noun = s;
                          
                          }
                          else if(s.contains("_JJ")){
                              System.out.println(s);
                          s = s.replaceAll("_JJ", "");
                          adjec = s;
                          
                          }
                          else if(s.contains("_VB")){
                              System.out.println(s);
                          //s = s.replaceAll("_VB", "");
                          String hg[] = s.split("_");
                          verb= hg[0];
                          
                          }
                          
                          
                          else{}
                      }
    
    //end pos
    


//create statements
Statement srt1 = con.createStatement();
Statement srt2 = con.createStatement();
Statement srt3 = con.createStatement();

String nid = "";
String vid = "";
String aid = "";
//search id based on pos noun
if(!noun.isEmpty()){
ResultSet rss1 = srt1.executeQuery("select `id` from `noun` where `str` like '%"+noun+"%'");
if(rss1.next()){
    nid = rss1.getString("id");
}
}
//search id based on pos adjec
if(!adjec.isEmpty()){
ResultSet rss2 = srt1.executeQuery("select `id` from `adjec` where `str` like '%"+adjec+"%'");
if(rss2.next()){
    
    aid = rss2.getString("id");
}
}
//search id based on pos verb
if(!verb.isEmpty()){
ResultSet rss3 = srt1.executeQuery("select `id` from `verb` where `str` like '%"+verb+"%'");
if(rss3.next()){
    vid = rss3.getString("id");
}
}
Statement sdfe = con.createStatement();
//chat bot
String insbot = "";
/*
String[] ms = msg.split(" ");
for(String qq:ms){
    
String sqlf="select `vall` from `table 3` where `keyy` like '%"+qq+"%' or `vall` like '%"+qq+"%' limit 1";
ResultSet rbot = sdfe.executeQuery(sqlf);
if(rbot.next()){
insbot = rbot.getString(1);
}



}*/

System.out.println("NID: "+nid);
System.out.println("vID: "+vid);
System.out.println("aID: "+aid);


//fetch response
if(!nid.isEmpty()){
String sqlf="select `rv` from `reviews` where `id` = '"+nid+"' limit 1";
ResultSet rbot = sdfe.executeQuery(sqlf);
if(rbot.next()){
insbot = rbot.getString(1);
}
}
else if(!aid.isEmpty()){
String sqlf="select `rv` from `reviews` where `id` = '"+aid+"' limit 1";
ResultSet rbot = sdfe.executeQuery(sqlf);
if(rbot.next()){
insbot = rbot.getString(1);
}
}
else if(!vid.isEmpty()){
String sqlf="select `rv` from `reviews` where `id` = '"+vid+"' limit 1";
ResultSet rbot = sdfe.executeQuery(sqlf);
if(rbot.next()){
insbot = rbot.getString(1);
}
}
else{}


if(insbot.isEmpty()){
insbot = "I am so sorry! Please try another one";
}
insbot = insbot.replaceAll("\\?"," ");
PreparedStatement pdf = con.prepareStatement("INSERT INTO messages (name,msg,posted) VALUES (?,?,NOW())");
pdf.setString(1,"ChatBot");
pdf.setString(2, insbot);
pdf.executeUpdate();

nid="";
aid="";
vid="";
insbot="";
msg=null;
msg1="";

}
}
}
catch(Exception m){
    m.printStackTrace();
}

%>

