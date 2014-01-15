// Show/Hide Menus
$(function(){
   $("#about").css("display", "block");
   $("#aboutButton").addClass("active"); 
   
   $("#aboutButton").click(function(){
      $(this).addClass("active");
      $("#contactButton").removeClass("active");
      $("#mypostsButton").removeClass("active");

      $("#about").show();
      $("#contact").hide();
      $("#myposts").hide();     
   });
   
   $("#contactButton").click(function(){
      $(this).addClass("active");
      $("#aboutButton").removeClass("active");
      $("#mypostsButton").removeClass("active");

      $("#about").css("display", "none");  
      $("#contact").css("display", "block");
      $("#myposts").css("display", "none");      
   });
   
   $("#mypostsButton").click(function(){
      $(this).addClass("active");
      $("#aboutButton").removeClass("active");
      $("#contactButton").removeClass("active");

      $("#about").css("display", "none");   
      $("#contact").css("display", "none"); 
      $("#myposts").css("display", "block");    
   });

}); // end function showMenus
