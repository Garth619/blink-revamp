<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>" />
<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0">
<title><?php
	/*
	 * Print the <title> tag based on what is being viewed.
	 */
	global $page, $paged;

	wp_title( '|', true, 'right' );

	// Add the blog name.
	bloginfo( 'name' );

	// Add the blog description for the home/front page.
	$site_description = get_bloginfo( 'description', 'display' );
	if ( $site_description && ( is_home() || is_front_page() ) )
		echo " | $site_description";

	// Add a page number if necessary:
	if ( ( $paged >= 2 || $page >= 2 ) && ! is_404() )
		echo esc_html( ' | ' . sprintf( __( 'Page %s', 'twentyten' ), max( $paged, $page ) ) );

	?></title>
<link rel="profile" href="http://gmpg.org/xfn/11" />
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>" />
<link rel="shortcut icon" href="<?php echo get_stylesheet_directory_uri(); ?>/favicon.ico" />

<?php wp_head(); ?>

</head>

<body <?php body_class(); ?>>

<div class="flex_order">
	
<div id="mobile_trigger" class="mobile_logo_wrapper">
	
	<a href="<?php bloginfo('url');?>">
		
		<img src="<?php bloginfo('template_directory');?>/images/logo.svg"/>
		
	</a>
	
</div><!-- mobile_logo_wrapper -->

<div id="sticky_trigger" class="sticky_header">
	
	<div class="sticky_header_left">
		
		<a class="sticky_logo" href="<?php bloginfo('url');?>">
			
			<img src="<?php bloginfo('template_directory');?>/images/logo.svg"/>
			
		</a><!-- sticky_logo -->
		
		<div class="sticky_locations">
			
			<span class="location_title_phone">Solana Beach <a class="pink" href="">(858) 436-4456</a></span>
			
			<span class="location_title_phone">Mission Valley <a class="pink" href="">(619) 964-6082</a></span>
			
			<?php echo file_get_contents("wp-content/themes/blink/images/tel.svg"); ?>
			
			<span class="call_us_cta">Give Us a Call</span><!-- call_us_cta -->
			
		</div><!-- sticky_locations -->
		
		<div class="sticky_nav">
			
			<div class="close"></div>
			
			<?php wp_nav_menu( array( 'container_class' => 'menu-header', 'theme_location' => 'main_menu' ) ); ?>
			
			<div class="second_sub_menu_col"></div><!-- second_sub_menu_col -->
			
		</div><!-- sticky_nav -->
		
	</div><!-- header_left -->
	
	<div class="sticky_book_now">
		
		<a href="<?php the_permalink(22);?>">Book Now</a>
		
	</div><!-- sticky_book_now -->
	
	<div class="sticky_menu_wrapper">
		
		
		<span class="menu_title">Menu</span><!-- menu_title -->
		
		<span class="menu_bar"></span><!-- menu_bar -->
		<span class="menu_bar"></span><!-- menu_bar -->
		<span class="menu_bar"></span><!-- menu_bar -->
		
	</div><!-- sticky_menu_wrapper -->
	
</div><!-- sticky_header -->
			