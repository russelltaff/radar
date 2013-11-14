window.onload = function(){
  // console.log("LOADED!!!"); 
  
  var searchField = $("input#q"); 

  $("input[type='submit']").on('click', function(e){
    e.preventDefault(); 
    var matchedPosts = []; 
    // get inputs from search field and fitler for those tags 
    var searchTag = searchField.val(); 
    $.each($(".tags"), function(index, tagdiv){
      console.log(index);
      console.log(tagdiv);
      var tagArray = $(tagdiv).data("tags").split(" ");
      $.each($(tagArray), function(index, tag){
        if (tag == searchTag){
          matchedPosts.push(tagdiv.parentNode); 
        }; 
      }); 
    }); 

    $(".post").remove(); 

    $.each($(matchedPosts), function(index, post){
      $(post).appendTo($("#content")); 
    }); 

  }); 
}