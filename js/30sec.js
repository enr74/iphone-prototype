function vote(videoId,vote){
	$.ajax({
	  url: 'vote.jsp?videoId='+videoId+'&vote=' + vote,
	  success: function(data) {
	    $('.result').html(data);
	    document.getElementById('down').onclick="return false;";
	    document.getElementById('up').onclick="return false;";
	    document.getElementById('rating').innerHTML=data
	  }
	});
}
function voteDeathMatch(videoId,vote){
	$.ajax({
	  url: 'vote.jsp?videoId='+videoId+'&vote=' + vote,
	  success: function(data) {
	    $('.result').html(data);
	    document.getElementById('v1').onclick="return false;";
	    document.getElementById('v2').onclick="return false;";
	    location.href='stats.jsp'
	  }
	});
}

$(function() {

	var moveLeft = 30;
	var moveDown = 60;

	$('a').hover(function(e) {	
    $('div#pop-up_' + this.id ).show()
      .css('top', e.pageY + moveDown)
      .css('left', e.pageX + moveLeft)
      .appendTo('body');
  }, function() {
    $('div#pop-up_' + this.id ).hide();
  });

  $('a').mousemove(function(e) {
    $("div#pop-up_" + this.id ).css('top',  e.pageY - moveDown).css('left', e.pageX + moveLeft);
  });


});

  	$(document).ready(function() {	
    $('div#pop-up_'+ document.body.id).show()
      .css('top',   400)
      .css('left',   150)
      .appendTo('body');
  }, function() {
    $('div#pop-up_'+ document.body.id).hide();
  });
