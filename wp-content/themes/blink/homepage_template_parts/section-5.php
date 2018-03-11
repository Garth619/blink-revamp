<section id="section_five">
	
	
	<div class="sec_five_left"></div><!-- sec_five_left -->
	
	<div class="sec_five_right">
		
		<div class="review_wrapper">
			
			<?php echo file_get_contents("wp-content/themes/blink/images/blink-circle.svg"); ?>
			
			<div class="review_slideshow">
				
				
				<?php if(get_field('reviews',53)): ?>
				 
					<?php while(has_sub_field('reviews',53)): ?>
				 
							<div class="single_slide">
					
								<a class="" href="<?php the_field( 'testimonials_link' ); ?>">
					
								<span class="review_keyword">"<?php the_sub_field( 'keyword' ); ?>"</span><!-- review_keyword -->
					
								<div class="stars">
						
									<span>&starf;</span>
									<span>&starf;</span>
									<span>&starf;</span>
									<span>&starf;</span>
									<span>&starf;</span>
						
								</div><!-- stars -->
					
							<div class="reviews_content">
						
								<?php the_sub_field( 'review_content' ); ?>
						
							</div><!-- reviews_content -->
					
					<span class="reviews_name"><?php the_sub_field( 'client_name' ); ?></span><!-- reviews_name -->
					
					</a>
					
				</div><!-- single_slide -->
				    
					<?php endwhile; ?>
				 
				<?php endif; ?>
				
				
				
			</div><!-- review_slideshow -->
			
			<div class="leave_review_wrapper">
			
				<a class="leave_review" href="//blinklashboutique.com/reviews" target="_blank">Leave a Review</a><!-- leave_review -->
			
			</div><!-- leave_review_wrapper -->
			
			<div class="prev_next_wrapper">
				
				<div class="prev slide_button">
					
					<?php echo file_get_contents("wp-content/themes/blink/images/arrow.svg"); ?>
					
				</div><!-- prev -->
				
				<div class="next slide_button">
					
					<?php echo file_get_contents("wp-content/themes/blink/images/arrow.svg"); ?>
					
				</div><!-- next -->
				
			</div><!-- prev_next_wrapper -->
			
		</div><!-- review_wrapper -->
		
	</div><!-- sec_five_right -->
	
	<div class="leave_review_mobile_wrapper">
			
		<a class="leave_review" href="//blinklashboutique.com/reviews" target="_blank">Leave a Review</a><!-- leave_review -->
			
	</div><!-- leave_review_wrapper -->
	
	
</section><!-- section_five -->