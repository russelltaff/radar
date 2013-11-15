// $(function(){
//   console.log("LOADED!!!"); 
  
//   var searchField = $("input#q"); 

//   $("input[type='submit']").on('click', function(e){
//     e.preventDefault(); 
//     var matchedPosts = []; 
//     // get inputs from search field and fitler for those tags 
//     var searchTag = searchField.val(); 
//     $.each($(".tags"), function(index, tagdiv){
//       console.log(index);
//       console.log(tagdiv);
//       var tagArray = $(tagdiv).data("tags").split(" ");
//       $.each($(tagArray), function(index, tag){
//         if (tag == searchTag){
//           matchedPosts.push(tagdiv.parentNode); 
//         }; 
//       }); 
//     }); 

//     $(".post").remove(); 

//     $.each($(matchedPosts), function(index, post){
//       $(post).appendTo($("#content")); 
//     }); 

//   }); 


  // Isotope Script for Sorting Scripts
  $(function(){
        
        var $container = $('#all_posts');
  
        $container.isotope({
        itemSelector : '.post'
        });

        $('#filter_post_type a').click(function(){
          var selector = $(this).attr('data-type-value');
          $container.isotope({ filter: selector });
          return false;
        });
        $('#filter_all_posts a').click(function(){
          var selector = $(this).attr('data-option-value');
          $container.isotope({ filter: selector });
          return false;
        });

        // $optionLinks.click(function(){
        //  // don't proceed if already selected
        //  if ( $(this).hasClass('selected') ) {
        //    return false;
        //  }
        //  var $optionSet = $(this).parents('.filtered');
        //  $optionSet.find('.selected').removeClass('selected');
        //  $(this).addClass('selected');
    
        //  // make option object dynamically, i.e. { filter: '.my-filter-class' }
        //  var options = {},
        //    key = $optionSet.attr('data-option-key'),
        //    value = $(this).attr('data-option-value');
        //  // parse 'false' as false boolean
        //  value = value === 'false' ? false : value;
        //  options[ key ] = value;
        //  if ( key === 'layoutMode' && typeof changeLayoutMode === 'function' ) {
        //    // changes in layout modes need extra logic
        //    changeLayoutMode( $(this), options )
        //  } else {
        //    // otherwise, apply new options
        //    $container.isotope( options );
        //  }
        
        //  return false;
        // });
    
      });
});