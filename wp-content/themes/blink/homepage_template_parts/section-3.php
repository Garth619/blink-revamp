<section id="section_three">
	
	
	<?php if(get_field('section_three_boxes')): ?>
	 
		<?php while(has_sub_field('section_three_boxes')): ?>
	 
			
			<div class="sec_three_box">
		
				<a href="<?php the_sub_field( 'page_link' ); ?>">
		
				<div class="overlay">
			
					<span class="sec_box_title"><?php the_sub_field( 'title' ); ?></span><!-- sec_box_title -->
			
				</div><!-- overlay -->
				
				<?php $image_background = get_sub_field( 'image_background' ); ?>
		
				<img src="<?php echo $image_background['url']; ?>" alt="<?php echo $image_background['alt']; ?>" />
		
				</a>
		
			</div><!-- sec_three_box -->
			
	    
		<?php endwhile; ?>
	 
	<?php endif; ?>
	
	
	
	
	<div class="mobile_video">
		
		<img src="<?php bloginfo('template_directory');?>/images/mobile_video.jpg"/>
		
		<div class="mobile_play_button_wrapper">
			
			<div class="mobile_play_circle">
					
				<div class="mobile_play_tri"></div><!-- mobile_play_tri -->
				
			</div><!-- mobile_play_circle -->
			
		</div><!-- mobile_play_button_wrapper -->
		
	</div>
	
	
	
</section><!-- section_three -->
