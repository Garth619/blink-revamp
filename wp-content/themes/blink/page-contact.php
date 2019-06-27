<?php

/* Template Name: Contact */

get_header(); ?>


<div id="internal_trigger" class="internal_main">
	
	
	<div class="container content">
		
		<h1 class="internal center"><?php the_title();?></h1>
		
		<div class="contact_wrapper">
			
			<?php if(get_field('location_states')): ?>
			 
				<?php while(has_sub_field('location_states')): ?>
			
			<?php if(get_sub_field('locations_info')): ?>
		 
			<?php while(has_sub_field('locations_info')): ?>
		 
				<div class="location_col">
			
					<span class="location_title"><?php the_sub_field( 'location_title' ); ?></span><!-- location_title -->
			
					<a class="address" href="<?php the_sub_field( 'address_link' ); ?>" target="_blank"><?php the_sub_field( 'address' ); ?></a>
			
					
					<?php if(get_sub_field('hours')): ?>
						
						<ul class="hours">
					 
						<?php while(has_sub_field('hours')): ?>
					 
							<li><?php the_sub_field( 'single_line_hours' ); ?></li>
					    
						<?php endwhile; ?>
						
						</ul>
					 
					<?php endif; ?>

			
					<a class="footer_tel" href="tel:<?php the_sub_field( 'phone' ); ?>">
				
					<?php echo file_get_contents("wp-content/themes/blink/images/tel.svg"); ?>
				
					<span><?php the_sub_field( 'phone' ); ?></span>
			
				</a>
			
				<span class="leave_comment" href="">
			
					<?php echo file_get_contents("wp-content/themes/blink/images/email.svg"); ?>
			
					<span>Question/Comment</span>
			
				</span><!-- leave_comment -->
			
				<div class="social_icons">
				
				
					<a class="" href="<?php the_sub_field( 'facebook_link' ); ?>" target="_blank"><?php echo file_get_contents("wp-content/themes/blink/images/fb.svg"); ?></a>
				
					<a class="" href="<?php the_sub_field( 'instagram_link' ); ?>" target="_blank"><?php echo file_get_contents("wp-content/themes/blink/images/instagram.svg"); ?></a>
				
					<a class="" href="<?php the_sub_field( 'google_plus' ); ?>" target="_blank"><?php echo file_get_contents("wp-content/themes/blink/images/google-plus.svg"); ?></a>
				
					<a class="" href="<?php the_sub_field( 'twitter' ); ?>" target="_blank"><?php echo file_get_contents("wp-content/themes/blink/images/twitter.svg"); ?></a>
				
				
				</div><!-- social_icons -->
			
				<a class="location_book_now" href="<?php the_sub_field( 'book_now_link' ); ?>" target="_blank">Book Now!</a><!-- location_book_now -->
			
			</div><!-- location_col -->
				
				
		    
			<?php endwhile; ?>
		 
		<?php endif; ?>
		
			<?php endwhile; ?>
		 
		<?php endif; ?>

			
			
			
			
		</div><!-- copntact_wrapper -->
		
	</div><!-- container -->
	
	
</div><!-- internal_main -->





	



<?php get_footer(); ?>
