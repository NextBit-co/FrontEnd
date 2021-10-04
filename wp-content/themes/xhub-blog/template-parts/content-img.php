<?php
/**
 * Template part for displaying posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package xhub blog
 */

 ?>
 <div class="col-lg-6 xhgrid-item">
	<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>

	<div class="xhgrid-pimg mgpr-hvr-shine">
		<?php
		if( has_post_thumbnail( ) ):
			x_hub_post_thumbnail( );
		else:
		?>
		<div class="bplus-noimg">
			<div class="xhgrid-square"></div>
			<div class="xhgrid-circle"></div>
		</div>
		<?php endif; ?>
		<div class="xhub-post-text">
			<div class="xhub-post-gtext">
			<?php xhub_blog_post_single_rand_category(); ?>
			<?php the_title( '<h2 class="entry-title grid-title"><a href="' . esc_url( get_permalink() ) . '" rel="bookmark">', '</a></h2>' ); ?>
			<?php
				if ( 'post' === get_post_type() ) :
								?>
					<div class="entry-meta-over">
					<?php x_hub_posted_on(); ?>
					</div><!-- .entry-meta -->
					<?php endif; ?>
				<a href="<?php the_permalink(); ?>" class="xhub-ptext-read mt-2 mb-2 text-white"><?php esc_html_e( 'Read More', 'xhub-blog' ); ?></a>
			</div>
		</div>
	</div>

	</article><!-- #post-<?php the_ID(); ?> -->
</div>