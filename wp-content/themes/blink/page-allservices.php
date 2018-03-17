<?php 
	

/* Template Name: All Services */

get_header(); ?>


<div class="internal_main">
	
	
	<div class="container content">
		
		<h1 class="internal center"><?php the_title();?></h1>
		
		<?php // get_template_part( 'loop', 'page' ) ?>
		
		
		<div class="all_services_wrapper">
			
			
			<?php echo file_get_contents("wp-content/themes/blink/images/blink-circle.svg"); ?>
			
			
			<blockquote><?php the_field( 'services_blockquote' ); ?></blockquote>
			
			
			<?php the_field( 'services_content' ); ?>



<div class="allservices_pricing">
	
	
	<?php if(get_field('services_pricing')): ?>
	 
		<?php while(has_sub_field('services_pricing')): ?>
	 
			<div class="single_allserv_price">
		
				<span class="allserve_price_title"><?php the_sub_field( 'title' ); ?></span><!-- allserve_price_title -->
		
				<p><?php the_sub_field( 'description' ); ?></p>
		
				<a class="see_pricing_button" href="">See Pricing</a>
		
			</div><!-- single_allserv_price -->
	    
		<?php endwhile; ?>
	 
	<?php endif; ?>
	
	
</div><!-- allservices_pricing -->
		
		<div class="additional_services">
			
			<h3><?php the_field( 'addition_services' ); ?></h3>
			
			<ul>
				
				<?php if(get_field('additional_services_list')): ?>
				 
					<?php while(has_sub_field('additional_services_list')): ?>
				 
						<li><?php the_sub_field( 'single_service' ); ?></li>
				    
					<?php endwhile; ?>
				 
				<?php endif; ?>
								
			</ul>
			
			<a class="guarantee" href="<?php the_field( 'satisfaction_link' ); ?>"><?php the_field( 'satisfaction_title' ); ?></a>
			
		</div><!-- additional_services -->
			
		</div><!-- all_services_wrapper -->
		
		
	</div><!-- container -->
	
	
</div><!-- internal_main -->





	



<?php get_footer(); ?>
