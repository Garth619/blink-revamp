<section id="section_four">
	
	<div class="sec_four_inner content">
		
		<h1 class="intro"><?php the_field( 'section_four_header' ); ?></h1>
			
			<div class="sec_four_main">
			
				<div class="sec_four_content">
			
				<?php the_field( 'section_four_content' ); ?>
			
			</div><!-- sec_four_content -->
			
			<div class="sec_four_image_wrapper">
				
				<span class="sec_four_caption"><?php the_field( 'section_four_image_caption' ); ?></span>
				
				<?php $section_four_image = get_field( 'section_four_image' ); ?>
				
				<img src="<?php echo $section_four_image['url']; ?>" alt="<?php echo $section_four_image['alt']; ?>" />
				
				
				<div class="meet_link_wrapper">
				
					<div class="meet_link">
						
						<a href="<?php the_field( 'meet_janelle_page_link' ); ?>">
						
						<?php echo file_get_contents("wp-content/themes/blink/images/view-more.svg"); ?>
						
						<span class="meet_title"><?php the_field( 'meet_janelle_title' ); ?></span><!-- meet_title -->
						
						<span class="meet_caption"><?php the_field( 'meet_janelle_caption' ); ?></span><!-- meet_caption -->
						
						</a>
						
					</div><!-- meet_link -->
					
					<div class="meet_link">
						
						<a href="<?php the_permalink(41);?>">
						
						<?php echo file_get_contents("wp-content/themes/blink/images/view-more.svg"); ?>
						
						<span class="meet_title">Meet Jen Pearson</span><!-- meet_title -->
						
						<span class="meet_caption">(Owner/Senior Lash Stylist)</span><!-- meet_caption -->
						
						</a>
						
					</div><!-- meet_link -->
				
				</div><!-- meet_link_wrapper -->
				
			</div><!-- sec_four_image_wrapper -->
		
		</div><!-- sec_four_main -->
		
	</div><!-- sec_four_inner -->
	
</section><!-- section_four -->