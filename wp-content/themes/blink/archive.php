<?php get_header(); ?>

		


	<div id="internal_trigger" class="internal_main">
	
	
	<div class="container content blog_container">
		
		<?php get_sidebar('blog'); ?>
		
		<div class="blog_content">
			
					<h1 class="internal">
<?php if ( is_day() ) : ?>
				<?php printf( __( '<span>%s</span>', 'twentyten' ), get_the_date() ); ?>
<?php elseif ( is_month() ) : ?>
				<?php printf( __( '<span>%s</span>', 'twentyten' ), get_the_date( _x( 'F Y', 'monthly archives date format', 'twentyten' ) ) ); ?>
<?php elseif ( is_year() ) : ?>
				<?php printf( __( '<span>%s</span>', 'twentyten' ), get_the_date( _x( 'Y', 'yearly archives date format', 'twentyten' ) ) ); ?>
<?php else : ?>
				<?php _e( 'Blog Archives', 'twentyten' ); ?>
<?php endif; ?>
			</h1>
			
			
			<div class="blog_feed">
				
				
<?php
	/*
	 * Queue the first post, that way we know
	 * what date we're dealing with (if that is the case).
	 *
	 * We reset this later so we can run the loop
	 * properly with a call to rewind_posts().
	 */
	if ( have_posts() )
		the_post();
?>

			
			
<?php
	/*
	 * Since we called the_post() above, we need to
	 * rewind the loop back to the beginning that way
	 * we can run the loop properly, in full.
	 */
	rewind_posts();

	/* include a file called loop-archive.php and that will be used instead.
	 */
	get_template_part( 'loop', 'archive' );
?>
				
			</div><!-- blog_feed -->
			
			
			</div><!-- blog_content -->
				
	</div><!-- container -->
	
	
</div><!-- internal_main -->

































<?php get_footer(); ?>
