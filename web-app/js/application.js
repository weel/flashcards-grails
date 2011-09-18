$(document).ready(function(){
	var Ajax;
	if (Ajax && (Ajax != null)) {
		Ajax.Responders.register({
		  onCreate: function() {
	        if($('spinner') && Ajax.activeRequestCount>0)
	          Effect.Appear('spinner',{duration:0.5,queue:'end'});
		  },
		  onComplete: function() {
	        if($('spinner') && Ajax.activeRequestCount==0)
	          Effect.Fade('spinner',{duration:0.5,queue:'end'});
		  }
		});
	}
	
	//Dropdown example for topbar nav
	// ===============================
	
	$("body").bind("click", function (e) {
	  $('.dropdown-toggle, .menu').parent("li").removeClass("open");
	});
	$(".dropdown-toggle, .menu").click(function (e) {
	  var $li = $(this).parent("li").toggleClass('open');
	  return false;
	});

});