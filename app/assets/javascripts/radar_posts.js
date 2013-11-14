
window.onload = function(){
  // console.log("LOADED!!!"); 

$(function(){
  console.log("LOADED!!!"); 
  
  var form = $("form.search-posts");

  if (!form) return;

  var searchField = $("input#q"); 

  form.on('submit', function(e) {
    e.preventDefault(); 
    // get inputs from search field and fitler for those tags 
    var searchQ = searchField.val().toLowerCase(); 
    $.each($(".tags"), function(index, tagdiv) {
      var tagArray = $(tagdiv).data("tags").split(" ");

      if (_.contains(tagArray, searchQ)) {
        $(tagdiv).parent().show();
      } else {
        $(tagdiv).parent().hide();        
      }
    })
  });
});
