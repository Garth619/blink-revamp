<?php

/* Template Name: Media */

get_header(); ?>


<div id="internal_trigger" class="internal_main">
	
	
	<div class="container content">
		
		<h1 class="internal center"><?php the_title();?></h1>
		
		
		<div class="media_wrapper">
			
			
			<?php if(get_field('monthyear')): ?>
			 
				<?php while(has_sub_field('monthyear')): ?>
			 
					<div class="single_month_wrapper">
				
						<h2><?php the_sub_field( 'monthyear_title' ); ?></h2>
			
						<?php if(get_sub_field('single_media_post')): ?>
					 
							<?php while(has_sub_field('single_media_post')): ?>
					 
								<div class="single_media_wrapper">
								
									<a href="<?php the_sub_field( 'url_link' ); ?>" target="blank">
				
										<div class="img_wrapper">
										
											<?php $single_media_image = get_sub_field( 'single_media_image' ); ?>
					
											<img src="<?php echo $single_media_image['url']; ?>" alt="<?php echo $single_media_image['alt']; ?>" />
					
										</div><!-- img_wrapper -->
				
										<div class="media_content">
					
											<h3><?php the_sub_field( 'title' ); ?></h3>
						
											<span class="media_title"><?php the_sub_field( 'business_name' ); ?></span><!-- media_title -->
						
										</div><!-- media_content -->
					
									</a>
				
								</div><!-- single_media_wrapper -->
					    
								<?php endwhile; ?>
					 
							<?php endif; ?>
					
						</div><!-- single_month_wrapper -->
					
				<?php endwhile; ?>
			 
			<?php endif; ?>
						
		</div><!-- media_wrapper -->
		
				
	</div><!-- container -->
	
	
</div><!-- internal_main -->





	



<?php get_footer(); ?>
