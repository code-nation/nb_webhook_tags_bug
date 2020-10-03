document.addEventListener("turbolinks:load", ()=> {
  $("#show_form a").on("click", function(e){
    e.preventDefault();
    $(this).closest("p").hide();
    $("#update_person_tags_form").show();
  });
});
