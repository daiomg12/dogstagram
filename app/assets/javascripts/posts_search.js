$(document).ready(function(){
  $("#posts-search #keyword").on("keyup", function(){
    var jqxhr = $.get(
      $("#posts-search").attr("action"),
      {keyword: $("#posts-search #keyword").val()},
      function(){
        var result = $("#posts-result").html();
        if(!result){
          $("#posts-search #keyword").popover({
            content: "投稿がありません",
            placement: "bottom",
            html: true,
            trigger: "focus"
          });
        } else {
          $("#posts-search #keyword").popover({
            content: $("#posts-result"),
            placement: "bottom",
            html: true,
            trigger: "focus"
          });
        }
        $("#posts-search #keyword").popover("show");
      }
    )
  })
});