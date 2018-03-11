<?php

/* Template Name: Testimonials */

get_header(); ?>


<div class="internal_main">
	
	
	<div class="container content">
		
		<h1 class="internal center"><?php the_title();?></h1>
		
		<a class="review_button_testi" href="//blinklashboutique.com/reviews" target="_blink">Leave A review!</a><!-- review_button_testi -->
		
		<div class="testominals_wrapper_page">
			
			<?php if(get_field('reviews')): ?>
				 
					<?php while(has_sub_field('reviews')): ?>
				 
							<div class="single_testimonial_page">
					
								
					
								<span class="review_keyword_page">"<?php the_sub_field( 'keyword' ); ?>"</span><!-- review_keyword -->
					
								<div class="stars_page">
						
									<span>&starf;</span>
									<span>&starf;</span>
									<span>&starf;</span>
									<span>&starf;</span>
									<span>&starf;</span>
						
								</div><!-- stars -->
					
							<div class="reviews_content_page">
						
								<?php the_sub_field( 'review_content' ); ?>
						
							</div><!-- reviews_content -->
					
					<span class="reviews_name_page"><?php the_sub_field( 'client_name' ); ?></span><!-- reviews_name -->
					
					
					
				</div><!-- single_slide -->
				    
					<?php endwhile; ?>
				 
				<?php endif; ?>
			
			
						
			
		</div><!-- testominals_wrapper -->
				
				
	</div><!-- container -->
	
	
</div><!-- internal_main -->





	



<?php get_footer(); ?>
