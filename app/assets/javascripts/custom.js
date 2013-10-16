$(function() {
  $('.jp-play').click(function(){
    $('.jp-play').hide();
    $('.jp-pause').show();
  });
  $('.jp-pause').click(function(){
    $('.jp-pause').hide();
    $('.jp-play').show();
  });
});