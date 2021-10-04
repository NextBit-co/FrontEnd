<?php
/**
 * XHub Blog Theme Customizer
 *
 * @package XHub Blog
 */

/**
 * Add postMessage support for site title and description for the Theme Customizer.
 *
 * @param WP_Customize_Manager $wp_customize Theme Customizer object.
 */


function xhub_blog_customize_register( $wp_customize ) {

    $wp_customize->remove_control('xhub_blog_main_menu_position');
    $wp_customize->remove_control('x_hub_blog_style');
    $wp_customize->remove_control('x_hub_blog_layout');
    
    $wp_customize->add_setting('xhub_blog_logo_position', array(
        'default'        => 'center',
        'capability'     => 'edit_theme_options',
        'type'           => 'theme_mod',
        'sanitize_callback' => 'x_hub_sanitize_select',
        'transport' => 'refresh',
    ));
    $wp_customize->add_control('xhub_blog_logo_position', array(
        'label'      => __('Logo Position', 'xhub-blog'),
        'section'    => 'x_hub_header',
        'settings'   => 'xhub_blog_logo_position',
        'type'       => 'select',
        'choices'    => array(
            'left' => __('Left', 'xhub-blog'),
            'center' => __('Center', 'xhub-blog'),
            'right' => __('Right', 'xhub-blog'),
        ),
    ));	
    $wp_customize->add_setting('xhub_blog_main_menu_position', array(
        'default'        => 'top',
        'capability'     => 'edit_theme_options',
        'type'           => 'theme_mod',
        'sanitize_callback' => 'x_hub_sanitize_select',
        'transport' => 'refresh',
    ));
    $wp_customize->add_control('xhub_blog_main_menu_position', array(
        'label'      => __('Main Menu Position', 'xhub-blog'),
        'description'=> __('You can set the menu top of the page or under logo. ', 'xhub-blog'),
        'section'    => 'x_hub_header',
        'settings'   => 'xhub_blog_main_menu_position',
        'type'       => 'select',
        'choices'    => array(
            'top' => __('Top', 'xhub-blog'),
            'bottom' => __('Bottom', 'xhub-blog'),
        ),
    ));
    $wp_customize->add_setting('xhub_blog_layout', array(
        'default'        => 'fullwidth',
        'capability'     => 'edit_theme_options',
        'type'           => 'theme_mod',
        'sanitize_callback' => 'x_hub_sanitize_select',
        'transport' => 'refresh',
    ));
    $wp_customize->add_control('xhub_blog_layout', array(
        'label'      => __('Select Blog Layout', 'xhub-blog'),
        'description'=> __('Right and Left sidebar only show when sidebar widget is available. ', 'xhub-blog'),
        'section'    => 'x_hub_blog',
        'settings'   => 'xhub_blog_layout',
        'type'       => 'select',
        'choices'    => array(
            'rightside' => __('Right Sidebar', 'xhub-blog'),
            'leftside' => __('Left Sidebar', 'xhub-blog'),
            'fullwidth' => __('No Sidebar', 'xhub-blog'),
        ),
    ));
	$wp_customize->add_setting('xhub_blog_style', array(
        'default'        => 'grid',
        'capability'     => 'edit_theme_options',
        'type'           => 'theme_mod',
        'sanitize_callback' => 'x_hub_sanitize_select',
        'transport' => 'refresh',
    ));
    $wp_customize->add_control('xhub_blog_style', array(
        'label'      => __('Select Blog Style', 'xhub-blog'),
        'section'    => 'x_hub_blog',
        'settings'   => 'xhub_blog_style',
        'type'       => 'select',
        'choices'    => array(
            'grid' => __('Grid Style', 'xhub-blog'),
            'list' => __('List Style', 'xhub-blog'),
            'classic' => __('Classic Style', 'xhub-blog'),
        ),
    ));
    
    


}
add_action( 'customize_register', 'xhub_blog_customize_register',99 );

