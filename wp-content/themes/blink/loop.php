
<?php if ( ! have_posts() ) : ?>
	
	
	<div id="post-0" class="post error404 not-found">
		
		<h2>Not Found</h2>
		
		<div class="entry-content">
			<p>Apologies, but no posts have been created</p>
			
		</div><!-- .entry-content -->
	</div><!-- #post-0 -->


<?php endif; ?>


<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>


				<div class="single_post">
					
					<a class="" href="<?php the_permalink();?>">
					
						<div class="blog_img_wrapper">
							
							<?php $homepage_image = get_field( 'homepage_image' ); ?>
							
							<img src="<?php echo $homepage_image['url']; ?>" alt="<?php echo $$homepage_image['alt']; ?>" />
						
						</div><!-- blog_img_wrapper -->
						
						<div class="single_content_wrapper">
						
							<h2><?php the_title();?></h2>
						
							<span class="meta"><?php $pfx_date = get_the_date(); echo $pfx_date ?></span><!-- meta -->
					
							<span class="single_post_excerpt"><?php echo wp_trim_words( get_the_content(), 30, '...' );?></span><!-- blog_excerpt -->
							
								<?php edit_post_link( __( 'Edit'), '', '' ); ?>
						
						</div><!-- single_content_wrapper -->
					
					</a>
					
				</div><!-- single_post -->


		
<?php endwhile; // end of loop ?>

<?php endif; ?>




