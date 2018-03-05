
	
	<section class="locations_wrapper">
		
		<?php if(!is_page_template( 'page-contact.php' )) { ?>
		
		<div class="locations_inner">
		
		<span class="large_header">Book an Appointment Today!</span><!-- large_header -->
		
		<div class="location_col">
			
			<span class="location_title">Mission Valley</span><!-- location_title -->
			
			<a class="address" href="https://www.google.com/maps/place/Blink+Lash+Boutique/@32.7730688,-117.1583384,17z/data=!3m1!4b1!4m5!3m4!1s0x80d9553ea5c0eedb:0x21764171a26272f4!8m2!3d32.7730688!4d-117.1561444" target="_blank">7801 Mission Center Ct., Suite 104<br/>San Diego, CA 92108</a>
			
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
			
				<span>Question/Comment</span>
			
			</span><!-- leave_comment -->
			
			<div class="social_icons">
				
				
				<a class="" href=""><?php echo file_get_contents("wp-content/themes/blink/images/fb.svg"); ?></a>
				
				<a class="" href=""><?php echo file_get_contents("wp-content/themes/blink/images/instagram.svg"); ?></a>
				
				<a class="" href=""><?php echo file_get_contents("wp-content/themes/blink/images/google-plus.svg"); ?></a>
				
				<a class="" href=""><?php echo file_get_contents("wp-content/themes/blink/images/twitter.svg"); ?></a>
				
				
			</div><!-- social_icons -->
			
			<a class="location_book_now" href="<?php the_permalink(22);?>">Book Now!</a><!-- location_book_now -->
			
		</div><!-- location_col -->
		
		<div class="location_col">
			
			<span class="location_title">SOLANA BEACH</span><!-- location_title -->
			
			<a class="address" href="https://www.google.com/maps/place/Blink+Lash+Boutique+Solana+Beach/@32.9932,-117.261541,17z/data=!3m1!4b1!4m5!3m4!1s0x80dc0ed31032cb57:0xe682c801d05ecb90!8m2!3d32.9932!4d-117.259347" target="blank">665 San Rodolfo Dr. Ste. 108<br/> Solana Beach, CA 92075</a>
			
			<ul class="hours">
				<li>Monday 11am - 5pm</li>
				<li>Tuesday - Friday 9am - 8pm</li>
				<li>Saturday 9am - 3pm</li>
				<li>Closed Sunday</li>
			</ul>
			
			<a class="footer_tel" href="tel:(858) 436-4456">
				
				<?php echo file_get_contents("wp-content/themes/blink/images/tel.svg"); ?>
				
				<span>(858) 436-4456</span>
			
			</a>
			
			<span class="leave_comment" href="">
			
				<?php echo file_get_contents("wp-content/themes/blink/images/email.svg"); ?>
			
				<span>Question/Comment</span>
			
			</span><!-- leave_comment -->
			
			<div class="social_icons">
				
				
				<a class="" href=""><?php echo file_get_contents("wp-content/themes/blink/images/fb.svg"); ?></a>
				
				<a class="" href=""><?php echo file_get_contents("wp-content/themes/blink/images/instagram.svg"); ?></a>
				
				<a class="" href=""><?php echo file_get_contents("wp-content/themes/blink/images/google-plus.svg"); ?></a>
				
				<a class="" href=""><?php echo file_get_contents("wp-content/themes/blink/images/twitter.svg"); ?></a>
				
				
			</div><!-- social_icons -->
			
			<a class="location_book_now" href="<?php the_permalink(22);?>">Book Now!</a><!-- location_book_now -->
			
		</div><!-- location_col -->
		
		</div><!-- locations_inner -->
		
		<img class="products" src="<?php bloginfo('template_directory');?>/images/products.png"/>
	
		<img class="photo" src="<?php bloginfo('template_directory');?>/images/photo.png"/>
	
		<img class="coffee" src="<?php bloginfo('template_directory');?>/images/coffee.png"/>
		
		<?php }?> <!-- end of if not contact page -->
		
		<div class="location_form_overlay">
			
			<div class="location_form_inner">
				
				<div class="overlay_close"></div><!-- overlay_close -->
				
				<span class="question">Question or Comment?</span>
				
				<?php gravity_form(4, false, false, false, '', true, 678); ?>
				
			</div><!-- location_form_inner -->
			
		</div><!-- location_form_overlay -->
		
	</section><!-- locations_wrapper -->
	
	<section id="mobile_pink_bg">
		
		
		
		
		
	</section><!-- mobile_pink_bg -->
	
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
