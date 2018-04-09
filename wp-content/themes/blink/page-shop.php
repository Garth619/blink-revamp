<?php 
	
	
/* Template Name: Shop */

get_header(); ?>


<div class="internal_main">
	
	
	<div class="container content">
		
		<h1 class="internal"><?php the_title();?></h1>
		
		<?php the_field( 'shop_content' ); ?>
		
		<a class="shop_now_page_button" href="<?php the_field( 'solana_beach_link' ); ?>" target="_blank">Solana Beach</a>
		
		<a class="shop_now_page_button" href="<?php the_field( 'mission_beach_link' ); ?>" target="_blank">Mission Beach</a>
		
	</div><!-- container -->
	
	
</div><!-- internal_main -->





	



<?php get_footer(); ?>
