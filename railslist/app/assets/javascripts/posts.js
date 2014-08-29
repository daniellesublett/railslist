$(document).on("page:change", function() {

  var revealPostForm = function (){
    $('#post-form').css( 'display', 'block');
  }

  $('#new-post-button').click(revealPostForm)

  $(".new_post").on("ajax:success", function(e, data, status, xhr){
      $('#post-form').css( 'display', 'none');
      $('#status-message').append("<strong>You have successfully added a post! Bitch.</strong>" )
      $('#posts ul').append("<li><a href='categories/"+ data.category_id + "/posts/"+ data.id+"'>" + data.title + "</a></li>")
    });
});


