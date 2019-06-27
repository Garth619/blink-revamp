<section id="section_one">
	
	<div class="sec_one_internal_content">
		
		<div class="play_button_wrapper">
			
			<div class="play_tri"></div><!-- play_tri -->
			
		</div><!-- play_button_wrapper -->
		
		<span class="play_video_title">play video</span>
		
		<span class="large_header"><?php the_field( 'welcome_tagline' ); ?></span>
		
		<div class="location_wrapper">
			
			<?php if(get_field('location_states',18)): ?>
			 
				<?php while(has_sub_field('location_states',18)): ?>
			
					<?php if(get_sub_field('locations_info')): ?>
			 
						<?php while(has_sub_field('locations_info')): ?>
			 
							<div class="location_single">
				
								<span class="location_title"><?php the_sub_field( 'location_title' ); ?></span><!-- location_title -->
				
								<a class="tel" href="tel:<?php the_sub_field( 'phone' ); ?>"><?php the_sub_field( 'phone' ); ?></a><!-- tel -->
				
							</div><!-- location_single -->
			    
						<?php endwhile; ?>
			 
					<?php endif; ?>
			
				<?php endwhile; ?>
			 
			<?php endif; ?>
			
		</div><!-- location_wrapper -->
		
		<a class="book_appointment">Book an Appointment</a>
		
	</div><!-- sec_one_internal_content -->
	
	<div class="learn_more_wrapper">
		
		
		<span class="learn_more_title">Learn More</span><!-- learn_more_title -->
		
		<?php echo file_get_contents("wp-content/themes/blink/images/learnmore.svg"); ?>
		
	</div><!-- learn_more_wrapper -->
	
	
	<img class="products" src="<?php bloginfo('template_directory');?>/images/products.png"/>
	
	<img class="photo" src="<?php bloginfo('template_directory');?>/images/photo.png"/>
	
	<img class="coffee" src="<?php bloginfo('template_directory');?>/images/coffee.png"/>
	
	<img class="prod2" src="<?php bloginfo('template_directory');?>/images/prod2.png"/>
	
</section><!-- section_one -->
