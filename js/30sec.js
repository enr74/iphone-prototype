function vote(videoId,vote){
	$.ajax({
	  url: 'vote.jsp?videoId='+videoId+'&vote=' + vote,
	  success: function(data) {
	    $('.result').html(data);
	    //alert(data);
	    document.getElementById('down').onclick="return false;";
	    document.getElementById('up').onclick="return false;";
	    //document.getElementById('stat').style.display='block';	
	    document.getElementById('rating').innerHTML=data
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