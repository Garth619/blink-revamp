<?php 
	
/* Template Name: Pricing */
	
get_header(); ?>


<div class="internal_main">
	
	
	
	<div class="container content">
		
		<h1 class="internal"><?php the_title();?></h1>
		
		<?php the_field( 'pricing_page_content' ); ?>
		
		<div class="price_wrapper">
			
			
			<?php if(get_field('pricing_section')): ?>
			
				
			 
				<?php while(has_sub_field('pricing_section')): ?>
				
					<?php $lowercasetitle = 	get_sub_field( 'price_section_title' ); ?>
					
					<div id="<?php print (str_replace(' ', '-', strtolower($lowercasetitle))); ?>" class="price_block_section">
						
					<h2 class="price_intro_header"><?php the_sub_field( 'price_section_title' ); ?></h2><!-- price_intro_header -->
					
					<div class="mobile_slide">
						

							<?php if(get_sub_field('pricing_subitems')): ?>
							 
								<?php while(has_sub_field('pricing_subitems')): ?>
							 
									<?php if ( get_row_layout() == 'items_like_bashful' ) : ?>
									
									
										<?php if(get_sub_field('single_sub_item')): ?>
										
											<?php $lowercase = 	get_sub_field( 'menu_item_title' ); ?>
										
											<div id="<?php print (str_replace(' ', '-', strtolower($lowercase))); ?>" class="pricing_single_wrapper">
												
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
													
													<?php if(get_sub_field('book_it_link_mission_valley') || get_sub_field( 'book_it_link_solana_valley' ) || get_sub_field( 'book_it_link_spokane' )) { ?>
														
															<span class="price_book_it" data-spokane="<?php the_sub_field( 'book_it_link_spokane' ); ?>" data-mission="<?php the_sub_field( 'book_it_link_mission_valley' ); ?>" data-solana="<?php the_sub_field( 'book_it_link_solana_valley' ); ?>" >Book It!</span><!-- price_book_it -->
														
													<?php } ?>
												
												
										    <?php endwhile; ?>
										    
												<?php if(get_sub_field( 'item_large_description' )):?>
											
													<div class="single_description_content">
							
														<?php the_sub_field( 'item_large_description' ); ?>
							
													</div><!-- single_description_content -->
											
												<?php endif;?>
											
											</div><!-- pricing_single_wrapper -->
										 
										<?php endif; ?>
									
									
									<?php endif;?>
									
									
									<?php if ( get_row_layout() == 'items_like_bottom_lashes_full_set' ) : ?>
									
										
										<?php if(get_sub_field('single_sub_item')): ?>
											
											<div class="pricing_single_wrapper no_h3_header">
										 
											<?php while(has_sub_field('single_sub_item')): ?>
											
											
											<?php $lowercase = 	get_sub_field( 'sub_item_title' ); ?>
										
												<div id="<?php print (str_replace(' ', '-', strtolower($lowercase))); ?>" class="price_single_bullet no_h3_header">
						
													<div class="price_single_bullet_inner">
						
														<span class="title no_h3_header"><?php the_sub_field( 'sub_item_title' ); ?></span><!-- title -->
														<span class="dots"></span><!-- dots -->
														<span class="price"><?php the_sub_field( 'sub_item_price' ); ?></span><!-- price -->
						
													</div><!-- price_single_bullet_inner -->
													
													<?php if( get_sub_field('sub_item_quick_description')): ?>
														
															<span class="additional_description"><?php the_sub_field( 'sub_item_quick_description' ); ?></span><!-- additional_description -->
														<?php endif;?>
						
													<?php if(get_sub_field('book_it_link_mission_valley') || get_sub_field( 'book_it_link_solana_valley' ) || get_sub_field( 'book_it_link_spokane' )) { ?>
														
														<span class="price_book_it" data-spokane="<?php the_sub_field( 'book_it_link_spokane' ); ?>" data-mission="<?php the_sub_field( 'book_it_link_mission_valley' ); ?>" data-solana="<?php the_sub_field( 'book_it_link_solana_valley' ); ?>" >Book It!</span><!-- price_book_it -->
														
													<?php } ?>
													
						
												</div><!-- price_single_bullet -->
										    
											<?php endwhile; ?>
											
											<?php if(get_sub_field( 'item_large_description' )):?>
											
											<div class="single_description_content">
							
													<?php the_sub_field( 'item_large_description' ); ?>
							
											</div><!-- single_description_content -->
											
											<?php endif;?>
											
											</div><!-- pricing_single_wrapper -->
										 
										<?php endif; ?>
									
									
									<?php endif;?>
									
									
									
									<?php if ( get_row_layout() == 'add_new_item_like_membership_touch_ups' ) : ?>
											
											
											
									
									
												<?php if(get_sub_field('content_block_options')): ?>
												
													<div class="pricing_single_wrapper">
												
													<?php while(has_sub_field('content_block_options')): ?>
													
														<?php if ( get_row_layout() == 'header_block' ) : ?>
														
															<h3 class="price_single_header"><?php the_sub_field( 'menu_item_title' ); ?></h3><!-- price_single_header -->
														
														<?php endif;?>
												 
														<?php if ( get_row_layout() == 'text_block' ) : ?>
								
															<?php the_sub_field( 'single_text_block' ); ?>
														
														<?php endif;?>
														
														<?php if ( get_row_layout() == 'menu_items' ) : ?>
														
															<?php if(get_sub_field('single_menu_item')): ?>
															 
																<?php while(has_sub_field('single_menu_item')): ?>
															 
																	<div class="price_single_content">
																	
																		<span class="price_single_content_title"><?php the_sub_field( 'title' ); ?></span><!-- price_single_content_title -->
																	
																		<span class="price_book_it" data-spokane="<?php the_sub_field( 'book_it_link_spokane' ); ?>" data-mission="<?php the_sub_field( 'book_it_link_mission_valley' ); ?>" data-solana="<?php the_sub_field( 'book_it_link_solana_beach' ); ?>">Book It!</span><!-- price_book_it -->
																	
																	</div><!-- price_single_content -->
															    
																<?php endwhile; ?>
															 
															<?php endif; ?>
														
														<?php endif;?>
												    
													<?php endwhile; ?>
													
													</div><!-- pricing_single_wrapper -->
												 
												<?php endif; ?>
				
												
				
											
									
									
									<?php endif;?>
									
									
							    
								<?php endwhile; ?>
							 
							<?php endif; ?>
							

						</div><!-- mobile_slide -->
					
					</div><!-- price_block_section -->
			 
				<?php endwhile; ?>
				
				
			 
			<?php endif; ?>
			
		</div><!-- price_wrapper -->
				
	</div><!-- container -->
	
	
</div><!-- internal_main -->

<?php get_footer(); ?>
