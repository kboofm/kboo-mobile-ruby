$(document).ready(function(){
  $("#jquery_jplayer_1").jPlayer({
    ready: function () {
      $(this).jPlayer("setMedia", {
        m4a: "http://live.kboo.fm:8000/high",
        // oga: "http://www.jplayer.org/audio/ogg/Miaow-07-Bubble.ogg"
      });
    },
    swfPath: "js",
    supplied: "m4a, oga"
  });
});