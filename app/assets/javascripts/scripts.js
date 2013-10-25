$(document).ready(function (){

  $(window).scroll(function() {
    var scrollTop = 78;
    if($(window).scrollTop() && $(window).scrollTop() >= scrollTop ){
      $('.lowernav').css({
        position : 'fixed',
        top : '0'
      });
    }
    if($(window).scrollTop() < scrollTop){
      $('.lowernav').removeAttr('style');  
    }
  });
});