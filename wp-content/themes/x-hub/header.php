<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package X Hub
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">

	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<?php wp_body_open(); ?>
<div id="page" class="site">
	<a class="skip-link screen-reader-text" href="#primary"><?php esc_html_e( 'Skip to content', 'x-hub' ); ?></a>
	<?php 
	$x_hub_topbar_show = get_theme_mod( 'x_hub_topbar_show', 1 );
	if($x_hub_topbar_show){
		do_action( 'x_hub_header_top_display' );
	} 
	?>
	<header id="masthead" class="site-header <?php if( has_header_image() ): ?>has-head-img<?php endif; ?>">
			<?php if( has_header_image() ): ?>
				<?php if( has_header_image() ): ?>
				<div class="header-img"> 
					<?php the_header_image_tag(); ?>
				</div>
				<?php endif; ?>
			<?php endif; ?>
			<?php
		$x_hub_main_menu_position = get_theme_mod('x_hub_main_menu_position','bottom');
		if( $x_hub_main_menu_position == 'top' ){
			do_action('x_hub_header_menu');
			do_action('x_hub_header_logo');

		}else{
			do_action('x_hub_header_logo');
			do_action('x_hub_header_menu');
		}
			 
			 ?>
		
	</header><!-- #masthead -->
<?php 
	$X_hub_show_home_posts_slider = get_theme_mod('X_hub_show_home_posts_slider',1);

	if( is_home() && $X_hub_show_home_posts_slider ){
		do_action('x_hub_post_carousel');
	}