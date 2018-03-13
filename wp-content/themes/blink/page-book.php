<?php 
	
/* Template Name: Book Now */	

get_header(); ?>


<div class="internal_main">
	
	
	<div class="container content">
		
		<h1 class="internal center"><?php the_title();?></h1>
		
		<div class="book_page_wrapper">
		
			<span class="select_booking">Select a Location Below</span><!-- select_booking -->
			
			<?php if(get_field('locations_info',18)): ?>
		 
				<?php while(has_sub_field('locations_info',18)): ?>
		
					<a class="book_now_page_button" href="<?php the_sub_field( 'book_now_link' ); ?>" target="_blank"><?php the_sub_field( 'location_title' ); ?></a><!-- book_now_page_button -->
		
				<?php endwhile; ?>
		 
			<?php endif; ?>	
		
		</div><!-- book_page_wrapper -->
		
	</div><!-- container -->
	
	
</div><!-- internal_main -->





	



<?php get_footer(); ?>
