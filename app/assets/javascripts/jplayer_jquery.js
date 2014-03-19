$(document).ready(function(){ 
$('#jquery_jplayer_1').jPlayer({
    ready: function() {
      $(this).jPlayer('setMedia', {
				m4a: "http://live.kboo.fm:8000/mobile",
			});
		},
		swfPath: "js",
supplied: "m4a, oga"

});
});

