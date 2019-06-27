<?php get_header(); ?>



<div id="internal_trigger" class="internal_main">
	
	
	<div class="container content blog_container">
		
		<?php get_sidebar('blog'); ?>
		
		<div class="blog_content">
			
			<h1 class="internal">Blog</h1>
			
			<div class="blog_feed">
				
				<?php get_template_part( 'loop', 'index' );?>
				
			</div><!-- blog_feed -->
			
			<?php if (  $wp_query->max_num_pages > 1 ) : ?>
	
				<div id="nav-below" class="navigation">
		
					<div class="nav-previous"><?php next_posts_link( __( '<span class="meta-nav">&larr;</span> Older posts' ) ); ?></div>
			
					<div class="nav-next"><?php previous_posts_link( __( 'Newer posts <span class="meta-nav">&rarr;</span>') ); ?></div>
	
				</div><!-- #nav-below -->

			<?php endif; ?>

			
		</div><!-- blog_content -->
				
	</div><!-- container -->
	
	
</div><!-- internal_main -->



<?php get_footer(); ?>




















