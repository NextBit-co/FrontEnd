<?php
/**
 * The file for header all actions
 *
 *
 * @package X Hub Blog
 */


function xhub_blog_header_logo_output(){
	$xhub_blog_logo_position = get_theme_mod( 'xhub_blog_logo_position','center' );
?>

	<div class="xhub-logo-section">
		<div class="container">
				<div class="head-logo-sec text-<?php echo esc_attr($xhub_blog_logo_position); ?>">
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
add_action('xhub_blog_header_logo','xhub_blog_header_logo_output');