<?php get_header(); ?>



				
	<div class="internal_main">
	
	
	<div class="container content blog_container">
		
		<?php get_sidebar('blog'); ?>
		
		<div class="blog_content">
			
			
			<h1 class="internal"><?php printf( __( '%s', 'twentyten' ), '<span>' . single_cat_title( '', false ) . '</span>' );?></h1>
			
			<div class="blog_feed">
				
				<?php get_template_part( 'loop', 'index' );?>
				
			</div><!-- blog_feed -->
			
			
			</div><!-- blog_content -->
				
	</div><!-- container -->
	
	
</div><!-- internal_main -->


		<?php get_footer(); ?>
