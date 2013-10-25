function updatePlayer(url){
  $("#jquery_jplayer_1").jPlayer({
    ready: function () { 
      $(this).jPlayer("setMedia", { 
        mp3: url

      }); 
      $(this).jPlayer("play");
    },
    swfPath: "js",
    supplied: "mp3, m4a, oga",

  }); 
  $("#jquery_jplayer_1").jPlayer("setMedia", { 
    mp3: url
  }); 
  $("#jquery_jplayer_1").jPlayer("play");
}


function play()  {
//jplayer code to play the mp3 music and stop other instances of the player
  $("#jquery_jplayer_1").jPlayer("destroy");

  $("#jquery_jplayer_1").jPlayer({
    ready: function () {
      $(this).jPlayer("setMedia", {
        mp3: $(this).data('audio-url'), //assigning the mp3 file name 
      }).jPlayer("play"); // auto play
    },
    ended: function (event) {
      $(this).jPlayer("play");
    },
    swfPath: "swf",
    supplied: "mp3"
  })
  .bind($.jPlayer.event.play, function() { // pause other instances of player when current one play
    $(this).jPlayer("pauseOthers");
  });

  
}

function stop() 
{
//jplayer code to stop the mp3 music by assign stop string into jPlayer method which div tag of jquery_jplayer_1
          $("#jquery_jplayer_1").jPlayer("stop");
}
