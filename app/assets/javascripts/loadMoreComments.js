var Append = {};
Append.open = false;
function ClickableCommentsLink(){
  $('.more-comments').click( function() {
    $(this).on('ajax:success', function(event, data, status,xhr) {
      event.preventDefault();
      var lessonId = $(this).data("lesson-id");
      $("#comments_" + lessonId).html(data);
      $("#comments-paginator-" + lessonId).html("<a id='more-comments' data-lesson-id=" + lessonId + "data-type='html' data-remote='true' href='/lessons/" + lessonId + "/comments>show morecomments</a>");
      Append.open = true;
      Append.comment = true; 
      Append.link = false;  
    }); 
  });
}

function DestroyComments(){
  $('.delete-comment').click( function() {
    Append.id = this;
    Append.lesson_id = $(this).data("lesson-id");
    Append.comment_count = $(this).data("value");
  }); 
}

$( document ).ready(function() {
  ClickableCommentsLink();
  DestroyComments();
  $('.comment_content').click (function(){
  	Append.id = this;
  	Append.lesson_id = $(this).data("post-id");
  	if (Append.comment_count == undefined){ Append.comment_count = $(this).data("value"); }
  	if(Append.comment_count < 4){ Append.comment = true; Append.link = false; } 
  	else if(Append.comment_count == 4){ Append.comment = false; Append.link = true; } 
  	else if(Append.comment_count > 4){ Append.comment = false; Append.link = false;  } 
  })
});
