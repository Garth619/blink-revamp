<section id="section_two">
	
	<div class="sec_two_inner">
		
		<div class="sec_two_content content">
			
			<?php echo file_get_contents("wp-content/themes/blink/images/blink-circle.svg"); ?>
			
			<span class="sec_two_intro"><?php the_field( 'section_two_header' ); ?></span><!-- sec_two_intro -->
			
			<span class="sec_two_intro_content"><?php the_field( 'section_two_content' ); ?></span><!-- sec_two_intro_content -->
			
		</div><!-- sec_two_content -->
		
		<div class="sec_two_gallery_wrapper">
			
			<div class="sec_two_gallery">
				
				
					
					<?php $gallery_images = get_field('gallery_images');?>
		
				 
						<div class="single_gallery">
					
							<a class="" href="<?php the_permalink(49);?>">
						
								<img src="<?php echo $gallery_images['featured_image_one']['url']; ?>" alt="<?php echo $gallery_images['featured_image_one']['alt']; ?>" />
					
								<div class="gallery_caption">
						
								<?php echo $gallery_images['featured_image_caption']; ?>
						
							</div><!-- gallery_caption -->
					
						</a>
					
					</div><!-- single_gallery -->
				    
					<div class="single_gallery">
					
						<a class="" href="<?php the_permalink(49);?>">
					
							<img src="<?php echo $gallery_images['image_two']['url']; ?>" alt="<?php echo $gallery_images['image_two']['alt']; ?>" />
					
							<div class="gallery_caption">
						
								<?php echo $gallery_images['image_two_caption']; ?>
					
						</div><!-- gallery_caption -->
					
						</a>
					
				</div><!-- single_gallery -->
				
				<div class="single_gallery">
					
					<a class="" href="<?php the_permalink(49);?>">
					
					<img src="<?php echo $gallery_images['image_three']['url']; ?>" alt="<?php echo $gallery_images['image_three']['alt']; ?>" />
					
					<div class="gallery_caption">
						
						<?php echo $gallery_images['image_three_caption']; ?>
						
					</div><!-- gallery_caption -->
					
					</a>
					
				</div><!-- single_gallery -->
				
				<div class="single_gallery">
					
					<a class="" href="<?php the_permalink(49);?>">
					
					<img src="<?php echo $gallery_images['image_four']['url']; ?>" alt="<?php echo $gallery_images['image_four']['alt']; ?>" />
					
					<div class="gallery_caption">
						
						<?php echo $gallery_images['image_four_caption']; ?>
						
					</div><!-- gallery_caption -->
					
					</a>
					
				</div><!-- single_gallery -->
				
			</div><!-- sec_two_gallery -->
			
			<a class="view_gallery_link" href="<?php the_permalink(49);?>">
				
				<span>View Gallery</span>
				
				<?php echo file_get_contents("wp-content/themes/blink/images/view-more.svg"); ?>
				
				
			</a><!-- view_gallery -->
			
			
		</div><!-- sec_two_gallery_wrapper -->
		
		
	</div><!-- sec_two_inner -->
	
	
</section><!-- section_two -->