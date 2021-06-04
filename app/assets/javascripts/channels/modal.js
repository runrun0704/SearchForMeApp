document.addEventListener("turbolinks:load"
,(function() {
    $('.modal_open_btn').click(function(){
      $('.hint_modal_wrapper').fadeIn();
    });
    
    $('.close_modal').click(function(){
      $('.hint_modal_wrapper').fadeOut();
    });
      
}));