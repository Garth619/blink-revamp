

jQuery(document).ready(function($){




 function createWaypoint (triggerElementId, animatedElement, className, offsetVal, functionName, reverse) {
                var waypoint = new Waypoint({
                    element: document.getElementById(triggerElementId),
                    handler: function(direction) {
                        if (direction === 'down') {
                            jQuery(animatedElement).addClass(className);

                            if(typeof functionName === 'function') {
                                functionName.call();
                            }
                        }

                        else {

                            if(reverse) {
                                jQuery(animatedElement).removeClass(className);

                                if(typeof functionName === 'function') {
                                    functionName.call();
                                }
                            }

                        }
                    },
                    offset: offsetVal
                    // Integer or percent
                    // 500 means when element is 500px from the top of the page, the event triggers
                    // 50% means when element is 50% from the top of the page, the event triggers
                });
            }

            //Waypoint Instance - Add Class To Element
            //Template -> createWaypoint("id-name", ".class-name", "class-to-be-added", offset-value, null, true);
            //Example -> createWaypoint("section-2", ".section-2-orange-dot", "section-2-orange-dot-active", 500, null, true);

            //Waypoint Instance - Call Function
            //Template -> createWaypoint("id-name", null, null, null, function-name, true);
            //Example -> createWaypoint("section-2", null, null, null, test, true);


						createWaypoint("section_two", "#section_two", "visible", 235, null, true);
						
						createWaypoint("section_three", "#section_three", "visible", 370, null, true);
						
						createWaypoint("section_four", "#section_four", "visible", 200, null, true);

						createWaypoint("section_five", "#section_five", "visible", 300, null, true);
						
						createWaypoint("section_six", "#section_six", "visible", 300, null, true);
						
						createWaypoint("section_seven", "#section_seven", "visible", 370, null, true);
						
	
	
	
	
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





	
	
	
}); // Document Ready

