<?php
/**
 * The file for header all actions
 *
 *
 * @package X Hub
 */

function x_hub_header_top_display_item(){
	$x_hub_topbar_container = get_theme_mod( 'x_hub_topbar_container', 'container' );
	$x_hub_topbar_mtext = get_theme_mod( 'x_hub_topbar_mtext', esc_html__('Welcome to Our Website','x-hub') );
   $x_hub_topbar_menushow = get_theme_mod( 'x_hub_topbar_menushow',1 );
   $x_hub_topbar_search = get_theme_mod( 'x_hub_topbar_search',1 );
?>
	<div class="xhubtop-tophead bg-dark text-light pt-1 pb-1">
   <div class="<?php echo esc_attr($x_hub_topbar_container); ?>">
		   <div class="row">
		   <?php if($x_hub_topbar_mtext): ?>
			   <div class="col-md-auto">
				   <span class="bhtop-text pt-2"><?php echo esc_html($x_hub_topbar_mtext); ?></span>
			   </div>
		   <?php endif; ?>
		   <?php if($x_hub_topbar_menushow && has_nav_menu( 'menu-top' ) || $x_hub_topbar_search ): ?>
			   <div class="col-md-auto ml-auto">
				   <div class="topmenu-serch">
		   <?php if($x_hub_topbar_menushow && has_nav_menu( 'top-menu' )): ?>
					   <div class="top-menu list-hide text-white">
						   <?php 
							   wp_nav_menu(
								   array(
									   'theme_location' => 'top-menu',
									   'menu_id'        => 'xhubtop-menu',
									   'menu_class'     => 'xhubtop-menu',
									   'depth'          => 1,
									   'fallback_cb'    => false,							
								   )
							   );
							?>
					   </div>
					   <?php endif; ?>
					   <?php if($x_hub_topbar_search): ?>
					   <div class="header-top-search">
						   <i class="fas fa-search"></i>
						   <?php get_search_form(); ?>
					   </div>	
					   <?php endif; ?>
					   <?php
					   if ( function_exists( 'x_hub_woocommerce_header_cart' ) ) {
						   x_hub_woocommerce_header_cart();
						   }
					   ?>
				   </div>
			   </div>
		   <?php endif; ?>
		   </div>
	   </div>
   </div>
<?php 	
}
add_action('x_hub_header_top_display','x_hub_header_top_display_item');




function x_hub_header_menu_output(){
?>
			<div class="menu-bar text-center">
				<div class="container">
					<div class="xhub-container menu-inner">
						<nav id="site-navigation" class="main-navigation">
							<?php
								wp_nav_menu( array(
									'theme_location' => 'main-menu',
									'menu_id'        => 'xhub-menu',
									'menu_class'        => 'xhub-menu',
								) );
							?>
						</nav><!-- #site-navigation -->	
					</div>
				</div>
			</div>

<?php
}
add_action('x_hub_header_menu','x_hub_header_menu_output');

function x_hub_header_logo_output(){
?>

	<div class="xhub-logo-section">
		<div class="container">
				<div class="head-logo-sec">
					<?php if(has_custom_logo()): ?>
						<div class="site-branding brand-logo">
							<?php
								the_custom_logo();
							?>
						</div>
					<?php endif; ?>
					<?php
				if(display_header_text() == true || (display_header_text() == true && is_customize_preview()) ): ?>
					<div class="site-branding brand-text">
							<?php if (display_header_text() == true || (display_header_text() == true && is_customize_preview()) ): ?>
								<h1 class="site-title"><a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home"><?php bloginfo( 'name' ); ?></a></h1>
								<?php
								$x_hub_description = get_bloginfo( 'description', 'display' );
								if ( $x_hub_description || is_customize_preview() ) :
									?>
									<p class="site-description"><?php echo $x_hub_description; // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped ?></p>
								<?php endif; ?>	
							<?php endif; ?>	

					</div><!-- .site-branding -->
					<?php endif; ?>
				</div>
		</div>
	</div>




<?php
}
add_action('x_hub_header_logo','x_hub_header_logo_output');