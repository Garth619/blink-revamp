<section id="section_seven">
	
	<div class="blog_wrapper">

      
      <?php $posts = get_field('featured_blog_posts');
      
      if( $posts ): ?>
         
          <?php foreach( $posts as $post): // variable must be called $post (IMPORTANT) ?>
              <?php setup_postdata($post); ?>
               <div class="single_post_homepage">
			
			<a class="" href="<?php the_permalink();?>">
			
			<div class="single_post_homepage_image_wrapper">
				
				<?php $homepage_image = get_field( 'homepage_image' ); ?>
			
				<div class="single_post_homepage_image_inner" style="background: url(<?php echo $homepage_image['url']; ?>) center center no-repeat;background-size:cover;"></div><!-- single_post_homepage_image_wrapper -->
			
			</div><!-- single_post_homepage_image_wrapper -->
			
			<div class="single_post_homepage_content">
				
				<div class="tri_wrapper">
					
					<div class="tri"></div><!-- tri -->
					
				</div><!-- tri_wrapper -->
				
				<span class="blog_title"><?php the_title();?></span><!-- blog_title -->
				
				<span class="meta"><?php $pfx_date = get_the_date(); echo $pfx_date ?></span>
				
				<span class="blog_description"><?php echo wp_trim_words( get_the_content(), 35, '...' );?></span><!-- blog_description -->
				
				<span class="read_more">Read More</span><!-- read_more -->
				
				
			</div><!-- single_post_homepage_content -->
			
			</a>
			
		</div><!-- single_post_homepage -->

          <?php endforeach; ?>
          
          <?php wp_reset_postdata(); // IMPORTANT - reset the $post object so the rest of the page works correctly ?>
      <?php endif; ?>
      
      
      
      
      
          
      
      
      

		
		
				
	</div><!-- blog_wrapper -->
	
</section><!-- section_seven -->