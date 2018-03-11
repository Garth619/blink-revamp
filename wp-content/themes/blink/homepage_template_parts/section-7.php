<section id="section_seven">
	
	<div class="blog_wrapper">
		
		
		<?php $mymain_query = new WP_Query( array( 'post_type' => 'post','posts_per_page' => '4', 'order' => 'DSC' ) ); while($mymain_query->have_posts()) : $mymain_query->the_post(); ?>
      
      
      
      
     <div class="single_post_homepage">
			
			<a class="" href="<?php the_permalink();?>">
			
			<div class="single_post_homepage_image_wrapper">
			
				<div class="single_post_homepage_image_inner"></div><!-- single_post_homepage_image_wrapper -->
			
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
      
      
      
      
     
     <?php endwhile; ?>
    <?php wp_reset_postdata(); // reset the query ?>
		
		
				
	</div><!-- blog_wrapper -->
	
</section><!-- section_seven -->