function scTop(){
 $(".msgs").animate({scrollTop:$(".msgs")[0].scrollHeight});
}
function load_new_stuff(){
 localStorage['lpid']=$(".msgs .msg:last").attr("title");
 $(".msgs").load("msgs.jsp",function(){
  if(localStorage['lpid']!=$(".msgs .msg:last").attr("title")){
   scTop();
  }
 });
 $(".users").load("users.jsp");
}
$(document).ready(function(){
    scTop();
    $("#msg_form").on("submit",function(){
        t=$(this);
        val=$(this).find("input[type=text]").val();
        if(val!=""){
        //checks if value isn't empty
            $("#send_status").remove();
            t.after("<span id='send_status'>Sending.....</span>");
            $.post("send.jsp",{msg:val},function(){
                load_new_stuff();
                $("#send_status").remove();
                t[0].reset();
            });
        } 
        else {
            $("#send_status").remove();
            t[0].reset();
            t.after("<span id='send_status'>Please provide not null input!</span>");
        };
  return false;
    });
});
setInterval(function(){
 load_new_stuff();
},5000);
