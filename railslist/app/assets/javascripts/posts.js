
// $('#posts').html("<%= j (render @posts) %>");
// $('#post-form').slideUp(350);

$(document).on("page:change", function() {

  var revealPostForm = function (){
    $('#post-form').css( 'display', 'block');

  }

  $('#new-post-button').click(revealPostForm)

  $(".new_post").on("ajax:success", function(e, data, status, xhr){
      console.log(data);
      $('#post-form').css( 'display', 'none');
      $('#status-message').append("<strong>You have successfully added a post! Bitch.</strong>" )
    });
});


// $(document).ready ->
//   $("#new_post").on("ajax:success", (e, data, status, xhr) ->
//     $("#new_post").append xhr.responseText
//      ).on "ajax:error", (e, xhr, status, error) ->
//     $("#new_post").append "<p>ERROR</p>"
// });
