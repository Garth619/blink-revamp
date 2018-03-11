<section id="section_six">
	
	<div class="sec_six_inner">
		
		<?php echo file_get_contents("wp-content/themes/blink/images/accent.svg"); ?>
		
		<span class="signup_title"><?php the_field( 'section_six_title' ); ?></span><!-- signup_title -->
		
		<div class="signup_description">
			
			<?php the_field( 'section_six_content' ); ?>
					
		</div><!-- signup_description -->
		
		<div class="sign_up_form">
			
			<?php gravity_form(1, false, false, false, '', true, 123); ?>
			
		</div><!-- sign_up_form -->
		
	</div><!-- sec_six_inner -->
	
</section><!-- section_six -->