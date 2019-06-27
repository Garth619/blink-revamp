<?php

/* Template Name: FAQs */

get_header(); ?>


<div id="internal_trigger" class="internal_main">
	
	
	<div class="container content">
		
		<h1 class="internal"><?php the_title();?></h1>
		
		
		<div class="faq_wrapper">
			
			<?php if(get_field('faqs')): ?>
			 
				<?php while(has_sub_field('faqs')): ?>
			 
					<div class="faq_single">
				
						<h2 class="question pink"><?php the_sub_field( 'question' ); ?></h2>
				
						<div class="answer">
				
						<?php the_sub_field( 'answer' ); ?>
				
				</div><!-- answer -->
				
			</div><!-- faq_single -->
			    
				<?php endwhile; ?>
			 
			<?php endif; ?>
			
						
						
		</div><!-- faq_wrapper -->
		
				
	</div><!-- container -->
	
	
</div><!-- internal_main -->





	



<?php get_footer(); ?>
