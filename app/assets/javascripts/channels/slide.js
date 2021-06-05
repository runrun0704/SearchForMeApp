document.addEventListener("turbolinks:load"
,(function() {
    $('.menu-icon').click(function(){
        $('.media_menu_bar').show();
    })

    $('.close_menu_bar').click(function(){
        $('.media_menu_bar').hide();
    })
      
}));