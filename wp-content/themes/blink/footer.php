
	
	<section class="locations_wrapper">
		
		<?php if(!is_page_template( 'page-contact.php' )) { ?>
		
		<span class="large_header">Book an Appointment Today!</span><!-- large_header -->
		
		<div class="locations_inner">
		
		
		
		
		<?php if(get_field('location_states',18)): ?>
			 
				<?php while(has_sub_field('location_states',18)): ?>
		
			<?php if(get_sub_field('locations_info')): ?>
		 
			<?php while(has_sub_field('locations_info')): ?>
		 
				
				
				<div class="location_col">
			
					<span class="location_title"><?php the_sub_field( 'location_title' ); ?></span><!-- location_title -->
					
					<div class="mobile_slidetoggle">
			
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
				
				</div><!-- mobile_slidetoggle -->
			
			</div><!-- location_col -->
				
				
		    
			<?php endwhile; ?>
		 
		<?php endif; ?>		
		
		<?php endwhile; ?>
		 
		<?php endif; ?>
		
		</div><!-- locations_inner -->
		
		<img class="products" src="<?php bloginfo('template_directory');?>/images/products.png"/>
	
		<img class="photo" src="<?php bloginfo('template_directory');?>/images/photo.png"/>
	
		<img class="coffee" src="<?php bloginfo('template_directory');?>/images/coffee.png"/>
		
		<?php }?> <!-- end of if not contact page -->
		
		<div class="location_form_overlay">
			
			<div class="location_form_inner">
				
				<div class="overlay_close"></div><!-- overlay_close -->
				
				<span class="question">Question or Comment?</span>
				
				<?php gravity_form(4, false, false, false, '', true, 678); ?>
				
			</div><!-- location_form_inner -->
			
		</div><!-- location_form_overlay -->
		
	</section><!-- locations_wrapper -->
	
	<section id="mobile_pink_bg">
		
		
		
		
		
	</section><!-- mobile_pink_bg -->
	
	<section id="form_section">
		
		
		<div class="form_wrapper">
			
			<span class="form_title">Got a Question? Get in Touch</span><!-- form_title -->
			
			<?php gravity_form(2, false, false, false, '', true, 546); ?>
			
		</div><!-- form_wrapper -->
		
		
	</section><!-- form_section -->
	
	<footer>

		<div class="copyright_wrapper">
			
			<div class="copyright_inner">
			
				<span class="copyright">&copy; <?php echo date("Y"); ?> Blink Lash Boutique</span>
			
				<a class="site_by" href="mailto:garrettwcullen@gmail.com">
					
					<span>Site By</span>
					
					<img src="<?php bloginfo('template_directory');?>/images/rcm.png"/>
					
				</a><!-- site_by -->
			
			</div><!-- copyright_inner -->
		
		</div><!-- copyright_wrapper -->
	
	</footer>
	
	
	
	<div class="book_now_item_overlay">
		
		<div class="book_now_item_overlay_inner">
			
			<div class="overlay_close book_item_close"></div><!-- overlay_close -->
			
			<span class="select_location">Select a Location</span><!-- select_location -->
			
			
					<div class="book_now_item_buttons">
						
						<span class="state_title ca_title">California</span><!-- state_title -->
						
						<a class="location misson_button" href="" target="_blank">Mission Valley, CA</a>
						
						<a class="location solana_button" href="" target="_blank">Solana Beach, CA</a>
						
						<span class="state_title wa_title">Washington</span><!-- state_title -->
						
						<a class="location spokane_button" href="" target="_blank">Spokane, WA</a>
						
						
					</div><!-- book_now_item_buttons -->
			
			
		</div><!-- book_now_item_overlay_inner -->
		
		
	</div><!-- book_now_item_overlay -->
	
	
	
	<div class="book_now_overlay">
		
		<div class="book_now_overlay_inner">
			
			<div class="overlay_close"></div><!-- overlay_close -->
			
			<span class="select_location">Book a Location</span><!-- select_location -->
			
			<?php if(get_field('location_states',18)): ?>
			 
				<?php while(has_sub_field('location_states',18)): ?>
					
					<span class="state_title"><?php the_sub_field( 'location_state' ); ?></span><!-- state_title -->
			
					<?php if(get_sub_field('locations_info')): ?>
			 
						<?php while(has_sub_field('locations_info')): ?>
			 
							<a class="location" href="<?php the_sub_field( 'book_now_link' ); ?>" target="_blank"><?php the_sub_field( 'location_title' ); ?></a>
					
						<?php endwhile; ?>
			 
					<?php endif; ?>
			
				<?php endwhile; ?>
			 
			<?php endif; ?>
			
			
		</div><!-- book_now_overlay_inner -->
		
		
	</div><!-- book_now_overlay -->
	
	
	<div class="call_now_overlay">
		
		<div class="call_now_overlay_inner">
			
			<div class="overlay_close"></div><!-- overlay_close -->
			
			<span class="call_location">Call a Location</span><!-- select_location -->
			
			<?php if(get_field('location_states',18)): ?>
			 
				<?php while(has_sub_field('location_states',18)): ?>
					
					<span class="state_title"><?php the_sub_field( 'location_state' ); ?></span><!-- state_title -->
			
					<?php if(get_sub_field('locations_info')): ?>
			 
						<?php while(has_sub_field('locations_info')): ?>
			 
							<a class="location" href="tel:<?php the_sub_field( 'phone' ); ?>"><?php the_sub_field( 'location_title' ); ?></a>
					
						<?php endwhile; ?>
			 
					<?php endif; ?>
			
				<?php endwhile; ?>
			 
			<?php endif; ?>
			
		</div><!-- call_now_overlay_inner -->
		
		
	</div><!-- call_now_overlay -->
	
	<?php if(is_front_page()) { ?>
	
	
	<div class="video_overlay">
		
		<div class="video_overlay_inner">
			
			<span class="video_close"><span>X</span> Close</span><!-- video_close -->
			
			<video id="video" preload="meta" autobuffer>
				
				<source src="<?php the_field( 'video_files_ogg' ); ?>" type="video/ogv">
				<source src="<?php the_field( 'video_files_webm' ); ?>" type="video/webm">
				<source src="<?php the_field( 'video_files_mp4' ); ?>" type="video/mp4">
				
			</video>
			
			<div class="pause_wrapper">
				<div class="pause_bar"></div>
				<div class="pause_bar"></div>
				<span>Pause</span>
			</div>
			
			
			<div class="overlay_play_wrapper">
				
				<div class="overlay_play"></div><!-- overlay_play -->
				
			</div><!-- overlay_play_wrapper -->
			
		</div><!-- video_overlay_inner -->
		
	</div><!-- video_overlay -->
		
	
	
	<?php } ?>
	
	</div><!-- flex_order -->


<?php wp_footer();?>


<?php the_field( 'footer_scripts', 'option' ); ?>

</body>
</html>
