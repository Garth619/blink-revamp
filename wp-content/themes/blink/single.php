<?php get_header(); ?>

	

<div class="internal_main">
	
	
	<div class="container content blog_container">
		
		<?php get_sidebar('blog'); ?>
		
		<div class="blog_content">
			
			<h1 class="internal"><?php the_title();?></h1>
			
			<span class="meta"><?php $pfx_date = get_the_date(); echo $pfx_date ?></span><!-- meta -->
			
			<img class="featured_image" src="<?php bloginfo('template_directory');?>/images/eyelash-extensions.jpg"/>
			
		
			<?php get_template_part( 'loop', 'single' ) ?>
			
			
		</div><!-- blog_content -->
				
	</div><!-- container -->
	
	
</div><!-- internal_main -->



<?php get_footer(); ?>





