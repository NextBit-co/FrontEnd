<?php
/**
 * Asthir theme add inline style 
 *
 * 
 */
if ( ! function_exists( 'x_hub_inline_css' ) ) :
function x_hub_inline_css() {

  $style = '';

    //top bar settings  
  $x_hub_topbar_bg = get_theme_mod( 'x_hub_topbar_bg', '#343a40' );
  $x_hub_topbar_color = get_theme_mod( 'x_hub_topbar_color', '#fff' );
  $x_hub_topbar_hcolor = get_theme_mod( 'x_hub_topbar_hcolor', '#dedede' );
 
  if( $x_hub_topbar_bg != '#343a40' ){
    $style .='.xhubtop-tophead{background-color:'.$x_hub_topbar_bg.'!important;}';
  }
  if( $x_hub_topbar_color != '#fff' ){
    $style .='.xhubtop-tophead, .xhubtop-tophead a,.xhubtop-menu li a, .xhubtop-tophead span, .xhubtop-tophead input,.xhubtop-tophead i{color:'.$x_hub_topbar_color.';}';
  }
  if( $x_hub_topbar_hcolor != '#dedede' ){
    $style .='.xhubtop-tophead a:hover,.xhubtop-menu li a:hover{color:'.$x_hub_topbar_hcolor.';}';
  }





        wp_add_inline_style( 'xhub-main-style', $style );
}
add_action( 'wp_enqueue_scripts', 'x_hub_inline_css' );
endif;
