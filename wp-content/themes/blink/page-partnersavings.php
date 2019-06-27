<?php

/* Template Name: Partner Savings */

get_header(); ?>


<div class="internal_main">
	
	
	<div class="container content">
		
		<h1 class="internal center"><?php the_title();?></h1>
		
		<div class="partner_wrapper">
			
			<?php if(get_field('partner_savings')): ?>
			 
				<?php while(has_sub_field('partner_savings')): ?>
			 
					<div class="single_partner">
				
						<h2><?php the_sub_field( 'title' ); ?></h2>
						
						<?php $image = get_sub_field( 'image' ); ?>
				
						<img class="partner_img" src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>"/>
				
						<?php the_sub_field( 'description' ); ?>
				
						<span class="additional_description"><?php the_sub_field( 'bold_description' ); ?></span><!-- additional_description -->
				
				</div><!-- single_partner -->
			    
				<?php endwhile; ?>
			 
			<?php endif; ?>
			
		</div><!-- partner_wrapper -->
		
	</div><!-- container -->
	
	
</div><!-- internal_main -->





	



<?php get_footer(); ?>
