<?php 
	
/* Template Name: Employment */

get_header(); ?>


<div class="internal_main">
	
	
	<div class="container content">
		
		<h1 class="internal"><?php the_title();?></h1>
		
		<?php get_template_part( 'loop', 'page' ) ?>
		
		<div class="emp_form_wrapper">
			
			<?php gravity_form(5, false, false, false, '', true, 1572); ?>
			
		</div><!-- emp_form_wrapper -->
		
	</div><!-- container -->
	
	
</div><!-- internal_main -->





	



<?php get_footer(); ?>
