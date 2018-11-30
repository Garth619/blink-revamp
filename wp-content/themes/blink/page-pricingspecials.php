<?php

/* Template Name: Specials */

get_header(); ?>


<div class="internal_main">
	
	
	<div class="container content">
		
		<h1 class="internal"><?php the_title();?></h1>
		
		<div class="specials_wrapper">
			
			
			<?php if(get_field('pricing_specials')): ?>
			 
				<?php while(has_sub_field('pricing_specials')): ?>
			 
					
					<div class="single_special">
				
						<h2><?php the_sub_field( 'specials_title' ); ?></h2>
				
						<p><?php the_sub_field( 'specials_description' ); ?></p>
						
						

				
					<span data-spokane="<?php the_sub_field( 'book_it_link_spokane' ); ?>" data-mission="<?php the_sub_field( 'book_it_link_mission_valley' ); ?>" data-solana="<?php the_sub_field( 'book_it_link_solana_beach' ); ?>" class="price_book_it">Book It!</span><!-- price_book_it -->
					
				
					</div><!-- single_special -->
			
			
					<?php endwhile; ?>
			 
			<?php endif; ?>
			
						
		</div><!-- specials_wrapper -->
		
		
	</div><!-- container -->
	
	
</div><!-- internal_main -->


<?php get_footer(); ?>
