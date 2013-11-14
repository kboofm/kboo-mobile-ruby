function updatePlayer(url){
  $('#jquery_jplayer_1').jPlayer({
    ready: function () { 
      $(this).jPlayer('setMedia', { 
        mp3: url
      }); 
      $(this).jPlayer('play');
    },
    swfPath: 'js',
    supplied: 'mp3, m4a, oga',
  }); 
  $('#jquery_jplayer_1').jPlayer('setMedia', { 
    mp3: url
  }); 
  $('#jquery_jplayer_1').jPlayer('play');
}

function stop() {
//jplayer code to stop the mp3 music by assign stop string into jPlayer method which div tag of jquery_jplayer_1
  $('#jquery_jplayer_1').jPlayer('destroy');
}
