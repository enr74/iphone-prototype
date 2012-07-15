function vote(vote){
	$.ajax({
	  url: 'vote.jsp?videoId=<%=request.getParameter("videoId")%>&vote=' + vote,
	  success: function(data) {
	    $('.result').html(data);
	    //alert(data);
	    document.getElementById('down').onclick="return false;";
	    document.getElementById('up').onclick="return false;";
	    //document.getElementById('stat').style.display='block';		    
	  }
	});
}
