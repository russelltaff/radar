// Show/Hide Menus
$(function(){
   $("#about").css("display", "block"); 
   
   $("#aboutButton").click(function(){
      $("#about").show();
      $("#contact").hide();
      $("#myposts").hide();     
   });
   
   $("#contactButton").click(function(){
      $("#about").css("display", "none");  
      $("#contact").css("display", "block");
      $("#myposts").css("display", "none");      
   });
   
   $("#mypostsButton").click(function(){
      $("#about").css("display", "none");   
      $("#contact").css("display", "none"); 
      $("#myposts").css("display", "block");    
   });

}); // end function showMenus

