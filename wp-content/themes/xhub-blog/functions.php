<?php 
/*This file is part of BeShop child theme.

All functions of this file will be loaded before of parent theme functions.
Learn more at https://codex.wordpress.org/Child_Themes.

Note: this function loads the parent stylesheet before, then child theme stylesheet
(leave it in place unless you know what you are doing.)
*/

if ( ! defined( 'XHUB_BLOG_VERSION' ) ) {
	$xhub_blog_theme = wp_get_theme();
	define( 'XHUB_BLOG_VERSION', $xhub_blog_theme->get( 'Version' ) );
}




function xhub_blog_enqueue_child_styles() {
	wp_enqueue_style( 'xhub-blog-parent-style', get_template_directory_uri() . '/style.css',array('xhub-main-style', 'xhub-default-style'), '', 'all');
   	wp_enqueue_style( 'xhub-blog-style',get_stylesheet_directory_uri() . '/assets/css/main-style.css',array(), XHUB_BLOG_VERSION, 'all');

   	wp_enqueue_script( 'xhub-blog-main-js', get_stylesheet_directory_uri() . '/assets/js/scripts.js',array('jquery','xhub-scripts','swiper-bundle.min'), XHUB_BLOG_VERSION, true );

  
}
add_action( 'wp_enqueue_scripts', 'xhub_blog_enqueue_child_styles');




/**
 * Customizer additions.
 */

 require get_stylesheet_directory() . '/inc/customizer.php';
 require get_stylesheet_directory() . '/inc/home-carousel.php';
 require get_stylesheet_directory() . '/inc/header-actions.php';



 function xhub_blog_post_single_rand_category(){
	$xhub_blog_categories = get_the_category();
	if($xhub_blog_categories){
		$xhub_blog_category = $xhub_blog_categories[mt_rand(0,count( $xhub_blog_categories)-1)];
	}else{
		$xhub_blog_category = '';
	}
	if ( 'post' === get_post_type() && !empty( $xhub_blog_category ) ) : 
	?>
		<span class="posts-cat">
		<a href="<?php echo esc_url(get_category_link($xhub_blog_category)); ?>"><?php echo esc_html($xhub_blog_category->name); ?></a>
		</span>
	<?php endif; 
  
 }

 if ( ! function_exists( 'xhub_blog_posted_on' ) ) :
	/**
	 * Prints HTML with meta information for the current post-date/time.
	 */
	function xhub_blog_posted_on() {
		$time_string = '<time class="entry-date published updated" datetime="%1$s">%2$s</time>';
		if ( get_the_time( 'U' ) !== get_the_modified_time( 'U' ) ) {
			$time_string = '<time class="entry-date published" datetime="%1$s">%2$s</time><time class="updated" datetime="%3$s">%4$s</time>';
		}

		$time_string = sprintf(
			$time_string,
			esc_attr( get_the_date( DATE_W3C ) ),
			esc_html( get_the_date() ),
			esc_attr( get_the_modified_date( DATE_W3C ) ),
			esc_html( get_the_modified_date() )
		);

		$posted_on = sprintf(
			/* translators: %s: post date. */
			esc_html_x( ' -- %s', 'post date', 'xhub-blog' ),
			'<a href="' . esc_url( get_permalink() ) . '" rel="bookmark">' . $time_string . '</a>'
		);

		echo '<span class="posted-on">' . $posted_on . '</span>'; // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped

	}
endif;
