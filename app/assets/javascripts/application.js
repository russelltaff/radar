// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


var addHoverListener = function(){
   $($("ul.dropdown_profile").parent()).hover(function(){
      $(this.children[1]).css("display", "block");
   }, function() {
      $(this.children[1]).css("display", "none");    
   });
   $($("ul.dropdown_post").parent()).hover(function(){
      $(this.children[1]).css("display", "block");
   }, function() {
      $(this.children[1]).css("display", "none");    
   });
    $($("ul.dropdown_search").parent()).hover(function(){
      $(this.children[1]).css("display", "block");
   }, function() {
      $(this.children[1]).css("display", "none");    
   });
}



$(document).ready(addHoverListener); //adds when *user* loads or refreshes
$(document).on("page:change", addHoverListener); //adds when rails loads
