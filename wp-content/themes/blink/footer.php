
	
	<section class="locations_wrapper">
		
		<div class="locations_inner">
		
		<span class="large_header">Book an Appointment Today!</span><!-- large_header -->
		
		<div class="location_col">
			
			<span class="location_title">Mission Valley</span><!-- location_title -->
			
			<a class="address" href="">7801 Mission Center Ct., Suite 104<br/>San Diego, CA 92108</a>
			
			<ul class="hours">
				<li>Tuesday – Friday 9AM - 7PM</li>
				<li>Saturday 9AM - 3PM</li>
				<li>Closed Sunday</li>
				<li>Closed Monday</li>
			</ul>
			
			<a class="footer_tel" href="tel:619 964-6082">
				
				<?php echo file_get_contents("wp-content/themes/blink/images/tel.svg"); ?>
				
				<span>(619) 964-6082</span>
			
			</a>
			
			<span class="leave_comment" href="">
			
				<?php echo file_get_contents("wp-content/themes/blink/images/email.svg"); ?>
			
				<span>Leave a Comment</span>
			
			</span><!-- leave_comment -->
			
			<div class="social_icons">
				
				
				<a class="" href=""><?php echo file_get_contents("wp-content/themes/blink/images/fb.svg"); ?></a>
				
				<a class="" href=""><?php echo file_get_contents("wp-content/themes/blink/images/instagram.svg"); ?></a>
				
				<a class="" href=""><?php echo file_get_contents("wp-content/themes/blink/images/google-plus.svg"); ?></a>
				
				<a class="" href=""><?php echo file_get_contents("wp-content/themes/blink/images/twitter.svg"); ?></a>
				
				
			</div><!-- social_icons -->
			
			<a class="location_book_now" href="">Book Now!</a><!-- location_book_now -->
			
		</div><!-- location_col -->
		
		<div class="location_col">
			
			<span class="location_title">Mission Valley</span><!-- location_title -->
			
			<a class="address" href="">7801 Mission Center Ct., Suite 104<br/>San Diego, CA 92108</a>
			
			<ul class="hours">
				<li>Tuesday – Friday 9AM - 7PM</li>
				<li>Saturday 9AM - 3PM</li>
				<li>Closed Sunday</li>
				<li>Closed Monday</li>
			</ul>
			
			<a class="footer_tel" href="tel:619 964-6082">
				
				<?php echo file_get_contents("wp-content/themes/blink/images/tel.svg"); ?>
				
				<span>(619) 964-6082</span>
			
			</a>
			
			<span class="leave_comment" href="">
			
				<?php echo file_get_contents("wp-content/themes/blink/images/email.svg"); ?>
			
				<span>Leave a Comment</span>
			
			</span><!-- leave_comment -->
			
			<div class="social_icons">
				
				
				<a class="" href=""><?php echo file_get_contents("wp-content/themes/blink/images/fb.svg"); ?></a>
				
				<a class="" href=""><?php echo file_get_contents("wp-content/themes/blink/images/instagram.svg"); ?></a>
				
				<a class="" href=""><?php echo file_get_contents("wp-content/themes/blink/images/google-plus.svg"); ?></a>
				
				<a class="" href=""><?php echo file_get_contents("wp-content/themes/blink/images/twitter.svg"); ?></a>
				
				
			</div><!-- social_icons -->
			
			<a class="location_book_now" href="">Book Now!</a><!-- location_book_now -->
			
		</div><!-- location_col -->
		
		</div><!-- locations_inner -->
		
	</section><!-- locations_wrapper -->
	
	<section id="form_section">
		
		
		<div class="form_wrapper">
			
			<span class="form_title">Got a Question? Get in Touch</span><!-- form_title -->
			
			<?php gravity_form(2, false, false, false, '', true, 546); ?>
			
		</div><!-- form_wrapper -->
		
		
	</section><!-- form_section -->
	
	<footer>

		<div class="copyright_wrapper">
			
			<div class="copyright_inner">
			
				<span class="copyright">&copy; <?php echo date("Y"); ?> Blink Lash Boutique</span>
			
				<a class="site_by" href="">
					
					<span>Site By</span>
					
					<img src="<?php bloginfo('template_directory');?>/images/rcm.png"/>
					
				</a><!-- site_by -->
			
			</div><!-- copyright_inner -->
		
		</div><!-- copyright_wrapper -->
	
	</footer>
	
	</div><!-- flex_order -->


<?php wp_footer();?>


</body>
</html>
