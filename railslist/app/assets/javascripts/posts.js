
// $('#posts').html("<%= j (render @posts) %>");
// $('#post-form').slideUp(350);

$(document).on("page:change", function() {


var revealPostForm = function (){
  $('#post-form').css( 'display', 'block');
}

$('#new-post').click(revealPostForm)

})




