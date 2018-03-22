<?php 
	
/* Template Name: Pricing */
	
get_header(); ?>


<div class="internal_main">
	
	<!-- this page needs schema for prices/menu -->
	
	<div class="container content">
		
		<h1 class="internal"><?php the_title();?></h1>
		
		<p>At Blink Lash Boutique we believe that everyone deserves the most customized look for their own beautiful eyes! This is why we offer different levels for you to choose from. You are unique and one size doesn’t fit all when it comes to Eyelash Extensions. Because of this each set will look different on you than on anyone else. Not sure which set is right for you?  We will be happy to set up a free consultation for you, so you and your lash stylist can discuss your desired look and feel, and what will work best for you!</p>

		<p>To view our current specials <a href="">click here!</a></p>
		
		<div class="price_wrapper">
			
			
			<?php if(get_field('pricing_section')): ?>
			
				
			 
				<?php while(has_sub_field('pricing_section')): ?>
					
					<div class="price_block_section">
				
					<h2 class="price_intro_header"><?php the_sub_field( 'price_section_title' ); ?></h2><!-- price_intro_header -->
					
					<div class="mobile_slide">
						
						<div class="pricing_single_wrapper">
							
							<?php if(get_sub_field('pricing_subitems')): ?>
							 
								<?php while(has_sub_field('pricing_subitems')): ?>
							 
									<?php if ( get_row_layout() == 'items_like_bashful' ) : ?>
									
									
										<?php if(get_sub_field('single_sub_item')): ?>
										
											<div class="pricing_single_wrapper">
												
												<h3 class="price_single_header"><?php the_sub_field( 'menu_item_title' ); ?></h3><!-- price_single_header -->
												
												
										 
												<?php while(has_sub_field('single_sub_item')): ?>
										 
												
													<div class="price_single_bullet">
						
														<div class="price_single_bullet_inner">
						
															<span class="title"><?php the_sub_field( 'sub_item_title' ); ?></span><!-- title -->
															<span class="dots"></span><!-- dots -->
															<span class="price"><?php the_sub_field( 'sub_item_price' ); ?></span><!-- price -->
															
															
						
														</div><!-- price_single_bullet_inner -->
														
														
														
														<?php if( get_sub_field('sub_item_quick_description')): ?>
														
															<span class="additional_description"><?php the_sub_field( 'sub_item_quick_description' ); ?></span><!-- additional_description -->
														<?php endif;?>
														
													</div><!-- price_single_bullet -->
													
													<?php if(get_sub_field('book_it_link_mission_valley') || get_sub_field( 'book_it_link_solana_valley' )) { ?>
														
															<span class="price_book_it" data-mission="<?php the_sub_field( 'book_it_link_mission_valley' ); ?>" data-solana="<?php the_sub_field( 'book_it_link_solana_valley' ); ?>" >Book It!</span><!-- price_book_it -->
														
													<?php } ?>
												
												
										    <?php endwhile; ?>
										    
												<div class="single_description_content">
							
													<?php the_sub_field( 'item_large_description' ); ?>
							
												</div><!-- single_description_content -->
											
											</div><!-- pricing_single_wrapper -->
										 
										<?php endif; ?>
									
									
									<?php endif;?>
									
									
									<?php if ( get_row_layout() == 'items_like_bottom_lashes_full_set' ) : ?>
									
										
										<?php if(get_sub_field('single_sub_item')): ?>
											
											<div class="pricing_single_wrapper no_h3_header">
										 
											<?php while(has_sub_field('single_sub_item')): ?>
										 
												<div class="price_single_bullet no_h3_header">
						
													<div class="price_single_bullet_inner">
						
														<span class="title no_h3_header"><?php the_sub_field( 'sub_item_title' ); ?></span><!-- title -->
														<span class="dots"></span><!-- dots -->
														<span class="price"><?php the_sub_field( 'sub_item_price' ); ?></span><!-- price -->
						
													</div><!-- price_single_bullet_inner -->
						
													<?php if(get_sub_field('book_it_link_mission_valley') || get_sub_field( 'book_it_link_solana_valley' )) { ?>
														
														<span class="price_book_it" data-mission="<?php the_sub_field( 'book_it_link_mission_valley' ); ?>" data-solana="<?php the_sub_field( 'book_it_link_solana_valley' ); ?>" >Book It!</span><!-- price_book_it -->
														
													<?php } ?>
						
												</div><!-- price_single_bullet -->
										    
											<?php endwhile; ?>
											
											</div><!-- pricing_single_wrapper -->
										 
										<?php endif; ?>
									
									
										
					
																				
									
									<?php endif;?>
									
									
							    
								<?php endwhile; ?>
							 
							<?php endif; ?>
							
						</div><!-- pricing_single_wrapper -->
						
					</div><!-- mobile_slide -->
					
					</div><!-- price_block_section -->
			 
				<?php endwhile; ?>
				
				
			 
			<?php endif; ?>
			
			
			
			
			
			
			<div class="price_block_section">
				
				<h2 class="price_intro_header">Full Set</h2><!-- price_intro_header -->
				
				<div class="mobile_slide">
				
				<div class="pricing_single_wrapper">
					
					<h3 class="price_single_header">Bashful</h3><!-- price_single_header -->
					
					<div class="price_single_bullet">
						
						<div class="price_single_bullet_inner">
						
							<span class="title">Classic</span><!-- title -->
							<span class="dots"></span><!-- dots -->
							<span class="price">$99</span><!-- price -->
						
						</div><!-- price_single_bullet_inner -->
						
						<span class="additional_description">(best for 2-3 week maintenance)</span><!-- additional_description -->
						
						<a class="price_book_it" href="">Book It!</a><!-- price_book_it -->
						
					</div><!-- price_single_bullet -->
					
					<div class="price_single_bullet">
						
						<div class="price_single_bullet_inner">
						
							<span class="title">Classic</span><!-- title -->
							<span class="dots"></span><!-- dots -->
							<span class="price">$99</span><!-- price -->
						
						</div><!-- price_single_bullet_inner -->
						
							<span class="additional_description">(best for 2-3 week maintenance)</span><!-- additional_description -->
						
						<div class="single_description_content">
							
							<p>Kill ’em softly with the subtle but elegant look of <strong>BASHFUL</strong>.  This modest set lets you say everything you need, effortlessly.</p>
							
							<p>Kill ’em softly with the subtle but elegant look of <strong>BASHFUL</strong>.  This modest set lets you say everything you need, effortlessly.</p>
							
							<img src="<?php bloginfo('template_directory');?>/images/pricing-example.jpg"/><!-- pricing_pic -->
							
						</div><!-- single_description_content -->
						
						<a class="price_book_it" href="">Book It!</a><!-- price_book_it -->
						
					</div><!-- price_single_bullet -->
					
				</div><!-- pricing_single_wrapper -->
				
				
				<div class="pricing_single_wrapper">
					
					<h3 class="price_single_header">Bashful</h3><!-- price_single_header -->
					
					<div class="price_single_bullet">
						
						<div class="price_single_bullet_inner">
						
							<span class="title">Classic</span><!-- title -->
							<span class="dots"></span><!-- dots -->
							<span class="price">$99</span><!-- price -->
						
						</div><!-- price_single_bullet_inner -->
						
						<span class="additional_description">(best for 2-3 week maintenance)</span><!-- additional_description -->
						
						<a class="price_book_it" href="">Book It!</a><!-- price_book_it -->
						
					</div><!-- price_single_bullet -->
					
					<div class="price_single_bullet">
						
						<div class="price_single_bullet_inner">
						
							<span class="title">Classic</span><!-- title -->
							<span class="dots"></span><!-- dots -->
							<span class="price">$99</span><!-- price -->
						
						</div><!-- price_single_bullet_inner -->
						
							<span class="additional_description">(best for 2-3 week maintenance)</span><!-- additional_description -->
						
						<div class="single_description_content">
							
							<p>Kill ’em softly with the subtle but elegant look of <strong>BASHFUL</strong>.  This modest set lets you say everything you need, effortlessly.</p>
							
							<p>Kill ’em softly with the subtle but elegant look of <strong>BASHFUL</strong>.  This modest set lets you say everything you need, effortlessly.</p>
							
							<img src="<?php bloginfo('template_directory');?>/images/pricing-example.jpg"/><!-- pricing_pic -->
							
						</div><!-- single_description_content -->
						
						<a class="price_book_it" href="">Book It!</a><!-- price_book_it -->
						
					</div><!-- price_single_bullet -->
					
				</div><!-- pricing_single_wrapper -->
				
				</div><!-- mobile_slide -->
				
			</div><!-- price_block_section -->
			
			
			
			
			
			<div class="price_block_section">
				
				<h2 class="price_intro_header">Touch Ups</h2><!-- price_intro_header -->
				
				<div class="mobile_slide">
				
				<div class="pricing_single_wrapper">
					
					<h3 class="price_single_header">Bashful</h3><!-- price_single_header -->
					
					<div class="price_single_bullet">
						
						<div class="price_single_bullet_inner">
						
							<span class="title">Classic</span><!-- title -->
							<span class="dots"></span><!-- dots -->
							<span class="price">$99</span><!-- price -->
						
						</div><!-- price_single_bullet_inner -->
						
						<span class="additional_description">(best for 2-3 week maintenance)</span><!-- additional_description -->
						
						<a class="price_book_it" href="">Book It!</a><!-- price_book_it -->
						
					</div><!-- price_single_bullet -->
					
					<div class="price_single_bullet">
						
						<div class="price_single_bullet_inner">
						
							<span class="title">Classic</span><!-- title -->
							<span class="dots"></span><!-- dots -->
							<span class="price">$99</span><!-- price -->
						
						</div><!-- price_single_bullet_inner -->
						
							<span class="additional_description">(best for 2-3 week maintenance)</span><!-- additional_description -->
						
						
						
						<a class="price_book_it" href="">Book It!</a><!-- price_book_it -->
						
					</div><!-- price_single_bullet -->
					
				</div><!-- pricing_single_wrapper -->
				
				
				<div class="pricing_single_wrapper">
					
					<h3 class="price_single_header">Bashful</h3><!-- price_single_header -->
					
					<div class="price_single_bullet">
						
						<div class="price_single_bullet_inner">
						
							<span class="title">Classic</span><!-- title -->
							<span class="dots"></span><!-- dots -->
							<span class="price">$99</span><!-- price -->
						
						</div><!-- price_single_bullet_inner -->
						
						<span class="additional_description">(best for 2-3 week maintenance)</span><!-- additional_description -->
						
						<a class="price_book_it" href="">Book It!</a><!-- price_book_it -->
						
					</div><!-- price_single_bullet -->
					
					<div class="price_single_bullet">
						
						<div class="price_single_bullet_inner">
						
							<span class="title">Classic</span><!-- title -->
							<span class="dots"></span><!-- dots -->
							<span class="price">$99</span><!-- price -->
						
						</div><!-- price_single_bullet_inner -->
						
							<span class="additional_description">(best for 2-3 week maintenance)</span><!-- additional_description -->
						
						<div class="single_description_content">
							
							<p>Kill ’em softly with the subtle but elegant look of <strong>BASHFUL</strong>.  This modest set lets you say everything you need, effortlessly.</p>
							
							<p>Kill ’em softly with the subtle but elegant look of <strong>BASHFUL</strong>.  This modest set lets you say everything you need, effortlessly.</p>
							
							<img src="<?php bloginfo('template_directory');?>/images/pricing-example.jpg"/><!-- pricing_pic -->
							
						</div><!-- single_description_content -->
						
						<a class="price_book_it" href="">Book It!</a><!-- price_book_it -->
						
					</div><!-- price_single_bullet -->
					
				</div><!-- pricing_single_wrapper -->
				
				</div><!-- mobile_slide -->
				
			</div><!-- price_block_section -->
			
			
			
			
			<div class="price_block_section">
				
				<h2 class="price_intro_header">Bottom Lashes</h2><!-- price_intro_header -->
				
				<div class="mobile_slide">
				
				<div class="pricing_single_wrapper no_h3_header">
					
					<!-- if no header add classess there are three below: "no_h3_header" -->
					
					<div class="price_single_bullet no_h3_header">
						
						<div class="price_single_bullet_inner">
						
							<span class="title no_h3_header">Classic</span><!-- title -->
							<span class="dots"></span><!-- dots -->
							<span class="price">$99</span><!-- price -->
						
						</div><!-- price_single_bullet_inner -->
						
					
						
						<a class="price_book_it" href="">Book It!</a><!-- price_book_it -->
						
					</div><!-- price_single_bullet -->
					
					<div class="price_single_bullet">
						
						<div class="price_single_bullet_inner">
						
							<span class="title no_h3_header">Classic</span><!-- title -->
							<span class="dots"></span><!-- dots -->
							<span class="price">$99</span><!-- price -->
						
						</div><!-- price_single_bullet_inner -->
						
							<span class="additional_description">(best for 2-3 week maintenance)</span><!-- additional_description -->
						
						
						
						<a class="price_book_it" href="">Book It!</a><!-- price_book_it -->
						
					</div><!-- price_single_bullet -->
					
				</div><!-- pricing_single_wrapper -->
				
				
				<div class="pricing_single_wrapper">
					
					<h3 class="price_single_header">Bashful</h3><!-- price_single_header -->
					
					<div class="price_single_bullet">
						
						<div class="price_single_bullet_inner">
						
							<span class="title">Classic</span><!-- title -->
							<span class="dots"></span><!-- dots -->
							<span class="price">$99</span><!-- price -->
						
						</div><!-- price_single_bullet_inner -->
						
						<span class="additional_description">(best for 2-3 week maintenance)</span><!-- additional_description -->
						
						<a class="price_book_it" href="">Book It!</a><!-- price_book_it -->
						
					</div><!-- price_single_bullet -->
					
					<div class="price_single_bullet">
						
						<div class="price_single_bullet_inner">
						
							<span class="title">Classic</span><!-- title -->
							<span class="dots"></span><!-- dots -->
							<span class="price">$99</span><!-- price -->
						
						</div><!-- price_single_bullet_inner -->
						
							<span class="additional_description">(best for 2-3 week maintenance)</span><!-- additional_description -->
						
						<div class="single_description_content">
							
							<p>Kill ’em softly with the subtle but elegant look of <strong>BASHFUL</strong>.  This modest set lets you say everything you need, effortlessly.</p>
							
							<p>Kill ’em softly with the subtle but elegant look of <strong>BASHFUL</strong>.  This modest set lets you say everything you need, effortlessly.</p>
							
							<img src="<?php bloginfo('template_directory');?>/images/pricing-example.jpg"/><!-- pricing_pic -->
							
						</div><!-- single_description_content -->
						
						<a class="price_book_it" href="">Book It!</a><!-- price_book_it -->
						
					</div><!-- price_single_bullet -->
					
				</div><!-- pricing_single_wrapper -->
				
				</div><!-- mobile_slide -->
				
			</div><!-- price_block_section -->
			
			
			
			
			
			<div class="price_block_section">
				
				<h2 class="price_intro_header">Membership Touch Ups</h2><!-- price_intro_header -->
				
				<div class="mobile_slide">
				
				<div class="pricing_single_wrapper">
					
					<h3 class="price_single_header">Bashful</h3><!-- price_single_header -->
					
					<div class="single_description_content">
							
						<p>Limited time!  1 free touch up with new member sign up!</p>
							
						<a class="" href="">Test Link</a>
						
						<a class="" href="">Test Link</a>
						
						<a class="" href="">Test Link</a>
						
						<p>Limited time!  1 free touch up with new member sign up!</p>
						
						<ul>
							<li>test</li>
							<li>test</li>
							<li>test</li>
							<li>test</li>
						</ul>
							
					</div><!-- single_description_content -->
					
					
					
				</div><!-- pricing_single_wrapper -->
				
				
				
				
				</div><!-- mobile_slide -->
				
			</div><!-- price_block_section -->
			
			
			
			<div class="price_block_section">
				
				<h2 class="price_intro_header">Membership Touch Ups</h2><!-- price_intro_header -->
				
				<div class="mobile_slide">
				
				<div class="pricing_single_wrapper no_h3_header_textblock">
					
					<!-- if no h3 add  "no_h3_header" -->
					
					<div class="single_description_content">
							
						<p>Limited time!  1 free touch up with new member sign up!</p>
							
						<a class="" href="">Test Link</a>
						
						<a class="" href="">Test Link</a>
						
						<a class="" href="">Test Link</a>
						
						<p>Limited time!  1 free touch up with new member sign up!</p>
						
						<ul>
							<li>test</li>
							<li>test</li>
							<li>test</li>
							<li>test</li>
						</ul>
							
					</div><!-- single_description_content -->
					
					
					
				</div><!-- pricing_single_wrapper -->
				
				
				
				
				</div><!-- mobile_slide -->
				
			</div><!-- price_block_section -->
			
			
			
		</div><!-- price_wrapper -->
		
				
	</div><!-- container -->
	
	
</div><!-- internal_main -->



<?php //use get_template_part( 'loop', 'page' ) if needed ?>

	



<?php get_footer(); ?>
