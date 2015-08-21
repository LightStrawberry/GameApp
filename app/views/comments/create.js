//alert("hello");
$(".replies").append("<%= j render(partial: 'shared/comment', locals: {c: @comment}) %>");
$(".new_comment textarea").val('');