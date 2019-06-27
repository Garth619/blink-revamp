

jQuery(document).ready(function($){




  function createWaypoint(triggerElementId, animatedElement, className, offsetVal, functionName, reverse) {
      if(jQuery('#' + triggerElementId).length) {
        var waypoint = new Waypoint({
          element: document.getElementById(triggerElementId),
          handler: function (direction) {
            if (direction === 'down') {
              jQuery(animatedElement).addClass(className);

              if (typeof functionName === 'function') {
                functionName();
                this.destroy();
              }

            } else if (direction === 'up') {
              if (reverse) {
                jQuery(animatedElement).removeClass(className);
              }

            }
          },
          offset: offsetVal
          // Integer or percent
          // 500 means when element is 500px from the top of the page, the event triggers
          // 50% means when element is 50% from the top of the page, the event triggers
        });
      }
    }
            
            
            createWaypoint("section_one", ".first_time_offer_wrapper", "visible", 140, null, true);


						createWaypoint("section_two", "#section_two", "visible", 235, null, true);
						
						createWaypoint("section_three", "#section_three", "visible", 420, null, true);
						
						createWaypoint("section_four", "#section_four", "visible", 200, null, true);

						createWaypoint("section_five", "#section_five", "visible", 350, null, true);
						
						createWaypoint("section_six", "#section_six", "visible", 300, null, true);
						
						createWaypoint("section_seven", "#section_seven", "visible", 370, null, true);
						
						
						
						createWaypoint("mobile_trigger", "#sticky_trigger", "visible", -135, null, true);

						createWaypoint("sticky_trigger", "#internal_trigger", "visible", 0, null, true);

						
	
	
	
	
	// Video overlay
	
	
	var video = document.getElementById("video");
	
	
	$('.play_button_wrapper').on('click', function(e) {
	  
		$('.video_overlay').addClass('open');
		
		video.play();
	
	});
	

	$('#video').on('click', function(e) {
  
		$('.pause_wrapper').toggleClass('hide');
		$('.overlay_play_wrapper').toggleClass('show');
	
	});
	


video.addEventListener("click", function() {
  
  if (video.paused == true) {
  
  	video.play();
  	
  } else {
   
    video.pause();
    
   }
	
});


$('span.video_close').on('click', function(e) {
	  
		$('.video_overlay').removeClass('open');
		
			video.pause();
	
});



// mobile


var elem = document.getElementById("video");

$('.mobile_video').on('click', function(e) {
  
	$('.video_overlay').addClass('open');
		
	video.play();
	
/*
	if (elem.requestFullscreen) {
  	elem.requestFullscreen();
	}
*/
	
	


});





	
	
	
}); // Document Ready

