<?php

/* Template Name: Before and After */

get_header(); ?>


<div class="internal_main">
	
	
	<div class="container content">
		
		<h1 class="internal center"><?php the_title();?></h1>
		
		<div class="before_after_wrapper">
			
			
			<?php if(get_field('before_and_after')): ?>
			 
				<?php while(has_sub_field('before_and_after')): ?>
			 
					<div class="ba_section">
				
						<h2><?php the_sub_field( 'section_title' ); ?></h2>
				
						<div class="ba_slideshow">
							
							<?php if(get_sub_field('images')): ?>
							 
								<?php while(has_sub_field('images')): ?>
							 
									<div class="ba_single_slide">
										
										<?php $single_image = get_sub_field( 'single_image' ); ?>
						
										<img data-lazy="<?php echo $single_image['url']; ?>" <?php echo $single_image['alt']; ?>/>
						
									</div><!-- ba_single_slide -->
							    
								<?php endwhile; ?>
							 
							<?php endif; ?>


					</div><!-- ba_slideshow -->
				
				</div><!-- ba_section -->
			    
				<?php endwhile; ?>
			 
			<?php endif; ?>
			
			
						
			
		</div><!-- before_after_wrapper -->
		
	</div><!-- container -->
	
	
</div><!-- internal_main -->





	



<?php get_footer(); ?>
