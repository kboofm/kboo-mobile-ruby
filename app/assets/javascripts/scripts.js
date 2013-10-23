$(document).ready(function (){
    // $(window).scroll(function() {
    //   var scrollTop = 78;
    //   if($(window).scrollTop() && $(window).scrollTop() >= scrollTop ){
    //         $('.lowernav').css({
    //             'position' : 'fixed',
    //             'top' : '0',
    //             'background-color': 'white',
    //             'width' : '100%'
    //         });
    //     }
    //     if($(window).scrollTop() < scrollTop){
    //                 $('.lowernav').removeAttr('style');  
    //             }
    // });
    $('a.html5').click(function() {
      var url = $(this).attr('href');  
      $("#jquery_jplayer_1").jPlayer("setMedia", {mp3: url}).jPlayer("play");
      return false;  
      }); 
});