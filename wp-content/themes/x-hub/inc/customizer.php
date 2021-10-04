<?php
/**
 * X Hub Theme Customizer
 *
 * @package X Hub
 */

/**
 * Add postMessage support for site title and description for the Theme Customizer.
 *
 * @param WP_Customize_Manager $wp_customize Theme Customizer object.
 */
function x_hub_customize_register( $wp_customize ) {
	$wp_customize->get_setting( 'blogname' )->transport         = 'postMessage';
	$wp_customize->get_setting( 'blogdescription' )->transport  = 'postMessage';
	$wp_customize->get_setting( 'header_textcolor' )->transport = 'postMessage';

	//select sanitization function
	function x_hub_sanitize_select( $input, $setting ){
		$input = sanitize_key($input);
		$choices = $setting->manager->get_control( $setting->id )->choices;
		return ( array_key_exists( $input, $choices ) ? $input : $setting->default );                
		  
	}

	$wp_customize->add_panel( 'x_hub_settings', array(
		 'priority'       => 50,
		  'title'          => __('X Hub Theme settings', 'x-hub'),
		  'description'    => __('All X Hub theme settings', 'x-hub'),
		  ) );
	// Add X Hub top header section
    $wp_customize->add_section('x_hub_topbar', array(
        'title' => __('X Hub Top bar', 'x-hub'),
        'capability'     => 'edit_theme_options',
        'description'     => __('The beshop topbar options ', 'x-hub'),
        'priority'       => 5,
		'panel'    => 'x_hub_settings',

    ));
	$wp_customize->add_setting( 'x_hub_topbar_show' , array(
    'capability'     => 'edit_theme_options',
    'type'           => 'theme_mod',
    'default'       =>  '1',
    'sanitize_callback' => 'absint',
    'transport'     => 'refresh',
    ) );
    $wp_customize->add_control( 'x_hub_topbar_show', array(
        'label'      => __('Show header topbar? ', 'x-hub'),
        'description'=> __('You can show or hide header topbar.', 'x-hub'),
        'section'    => 'x_hub_topbar',
        'settings'   => 'x_hub_topbar_show',
        'type'       => 'checkbox',
        
    ) );
    $wp_customize->add_setting('x_hub_topbar_container', array(
        'default'        => 'container',
        'capability'     => 'edit_theme_options',
        'type'           => 'theme_mod',
        'sanitize_callback' => 'x_hub_sanitize_select',
        'transport' => 'refresh',
    ));
    $wp_customize->add_control('x_hub_topbar_container', array(
        'label'      => __('Topbar Container Type', 'x-hub'),
        'description'=> __('You can set standard container or full width container. ', 'x-hub'),
        'section'    => 'x_hub_topbar',
        'settings'   => 'x_hub_topbar_container',
        'type'       => 'select',
        'choices'    => array(
            'container' => __('Standard Container', 'x-hub'),
            'container-fluid' => __('Full width Container', 'x-hub'),
        ),
    ));
    $wp_customize->add_setting('x_hub_topbar_mtext', array(
        'capability'     => 'edit_theme_options',
        'type'           => 'theme_mod',
        'default'       =>  esc_html__('Welcome to Our Website','x-hub'),
        'sanitize_callback' => 'sanitize_text_field',
        'transport' => 'refresh',
    ));
    $wp_customize->add_control('x_hub_topbar_mtext', array(
        'label'      => __('Welcome text', 'x-hub'),
        'description'     => esc_html__('Enter your website welcome text. Leave empty if you don\'t want the text.','x-hub'),
        'section'    => 'x_hub_topbar',
        'settings'   => 'x_hub_topbar_mtext',
        'type'       => 'text',
    ));
    $wp_customize->add_setting( 'x_hub_topbar_menushow' , array(
    'capability'     => 'edit_theme_options',
    'type'           => 'theme_mod',
    'default'       =>  '1',
    'sanitize_callback' => 'absint',
    'transport'     => 'refresh',
    ) );
    $wp_customize->add_control( 'x_hub_topbar_menushow', array(
        'label'      => __('Show header topbar menu? ', 'x-hub'),
        'description'=> __('You can show or hide topbar menu. You need to add menu from menu section for display menu.', 'x-hub'),
        'section'    => 'x_hub_topbar',
        'settings'   => 'x_hub_topbar_menushow',
        'type'       => 'checkbox',
        
    ) );
    $wp_customize->add_setting( 'x_hub_topbar_search' , array(
    'capability'     => 'edit_theme_options',
    'type'           => 'theme_mod',
    'default'       =>  '1',
    'sanitize_callback' => 'absint',
    'transport'     => 'refresh',
    ) );
    $wp_customize->add_control( 'x_hub_topbar_search', array(
        'label'      => __('Show header topbar search? ', 'x-hub'),
        'description'=> __('You can show or hide topbar search.', 'x-hub'),
        'section'    => 'x_hub_topbar',
        'settings'   => 'x_hub_topbar_search',
        'type'       => 'checkbox',
    ) );
	// Add setting
	$wp_customize->add_setting('x_hub_topbar_bg', array(
		'default' => '#343a40',
		'type' =>'theme_mod',
		'sanitize_callback' => 'sanitize_hex_color',
		'transport' => 'refresh',
	));
	// Add color control 
	$wp_customize->add_control(
		new WP_Customize_Color_Control(
			$wp_customize, 'x_hub_topbar_bg', array(
				'label' => __('Topbar Background Color','x-hub'),
				'section' => 'x_hub_topbar'
			)
		)
	);
	// Add setting
	$wp_customize->add_setting('x_hub_topbar_color', array(
		'default' => '#fff',
		'type' =>'theme_mod',
		'sanitize_callback' => 'sanitize_hex_color',
		'transport' => 'refresh',
	));
	// Add color control 
	$wp_customize->add_control(
		new WP_Customize_Color_Control(
			$wp_customize, 'x_hub_topbar_color', array(
				'label' => __('Topbar text Color','x-hub'),
				'section' => 'x_hub_topbar'
			)
		)
	);
	// Add setting
	$wp_customize->add_setting('x_hub_topbar_hcolor', array(
		'default' => '#dedede',
		'type' =>'theme_mod',
		'sanitize_callback' => 'sanitize_hex_color',
		'transport' => 'refresh',
	));
	// Add color control 
	$wp_customize->add_control(
		new WP_Customize_Color_Control(
			$wp_customize, 'x_hub_topbar_hcolor', array(
				'label' => __('Topbar link hover Color','x-hub'),
				'section' => 'x_hub_topbar'
			)
		)
	); 
// Section header 
    $wp_customize->add_section('x_hub_header', array(
		'title' => __('X Hub Header Settings', 'x-hub'),
		'capability'     => 'edit_theme_options',
		'description'     => __('X Hub theme header settings', 'x-hub'),
		'panel'    => 'x_hub_settings',
	
	));
	$wp_customize->add_setting('x_hub_main_menu_position', array(
        'default'        => 'bottom',
        'capability'     => 'edit_theme_options',
        'type'           => 'theme_mod',
        'sanitize_callback' => 'x_hub_sanitize_select',
        'transport' => 'refresh',
    ));
    $wp_customize->add_control('x_hub_main_menu_position', array(
        'label'      => __('Main Menu Position', 'x-hub'),
        'description'=> __('You can set the menu top of the page or under logo. ', 'x-hub'),
        'section'    => 'x_hub_header',
        'settings'   => 'x_hub_main_menu_position',
        'type'       => 'select',
        'choices'    => array(
            'top' => __('Top', 'x-hub'),
            'bottom' => __('Bottom', 'x-hub'),
        ),
    ));
// Home Carousel
$wp_customize->add_section('X_hub_blog_home_pslider', array(
    'title' => __('Home Posts Carousel', 'x-hub'),
    'capability'     => 'edit_theme_options',
    'panel'     => 'x_hub_settings',

));
$wp_customize->add_setting('X_hub_show_home_posts_slider', array(
    'default'        => 1,
    'capability'     => 'edit_theme_options',
    'type'           => 'theme_mod',
    'sanitize_callback' => 'absint',
    'transport' => 'refresh',
));
$wp_customize->add_control('X_hub_show_home_posts_slider', array(
    'label'      => __('Show Posts Carousel?', 'x-hub'),
    'section'    => 'X_hub_blog_home_pslider',
    'settings'   => 'X_hub_show_home_posts_slider',
    'type'       => 'checkbox',
));
/*
$wp_customize->add_setting('X_hub_hslider_style', array(
    'default'        => 'one',
    'capability'     => 'edit_theme_options',
    'type'           => 'theme_mod',
    'sanitize_callback' => 'X_hub_sanitize_select',
    'transport' => 'refresh',
));
$wp_customize->add_control('X_hub_hslider_style', array(
    'label'      => __('Select Blog Slider Style', 'x-hub'),
    'section'    => 'X_hub_blog_home_pslider',
    'settings'   => 'X_hub_hslider_style',
    'type'       => 'select',
    'choices'    => array(
        'one'  => __('Style One (One item)','x-hub'),
        'two'   => __('Style two (One item)','x-hub'),
        'three' => __('Style three (Two items)','x-hub'),
        'four' => __('Style four (three items)','x-hub'),
    )
));
*/
$wp_customize->add_setting('X_hub_hslider_category', array(
    'default'        => 'all',
    'capability'     => 'edit_theme_options',
    'type'           => 'theme_mod',
    'sanitize_callback' => 'X_hub_sanitize_select',
    'transport' => 'refresh',
));
$wp_customize->add_control('X_hub_hslider_category', array(
    'label'      => __('Select Posts Category', 'x-hub'),
    'section'    => 'X_hub_blog_home_pslider',
    'settings'   => 'X_hub_hslider_category',
    'type'       => 'select',
    'choices'    => X_hub_get_term_options( 'category','all',__('Category','x-hub') ),
));
$wp_customize->add_setting('X_hub_hslider_post_orderby', array(
    'default'        => 'rand',
    'capability'     => 'edit_theme_options',
    'type'           => 'theme_mod',
    'sanitize_callback' => 'x_hub_sanitize_select',
    'transport' => 'refresh',
));
$wp_customize->add_control('X_hub_hslider_post_orderby', array(
    'label'      => __('Select Posts Order', 'x-hub'),
    'section'    => 'X_hub_blog_home_pslider',
    'settings'   => 'X_hub_hslider_post_orderby',
    'type'       => 'select',
    'choices'    => array(
        'desc'   => __('Latest Posts','x-hub'),
        'asc'  => __('Oldest Posts','x-hub'),
        'rand' => __('Random Posts','x-hub'),
    )
));
$wp_customize->add_setting('X_hub_hslider_posts_number', array(
    'default' => 10,
    'capability'     => 'edit_theme_options',
    'type'           => 'theme_mod',
    'sanitize_callback' => 'sanitize_text_field',
    'transport' => 'refresh',
));
$wp_customize->add_control('X_hub_hslider_posts_number', array(
    'label'      => esc_html__('How Many Posts Show For Slider?','x-hub'),
    'section'    => 'X_hub_blog_home_pslider',
    'settings'   => 'X_hub_hslider_posts_number',
    'type'       => 'text',
));
$wp_customize->add_setting('X_hub_show_hslider_text', array(
    'default'        => 1,
    'capability'     => 'edit_theme_options',
    'type'           => 'theme_mod',
    'sanitize_callback' => 'absint',
    'transport' => 'refresh',
));
$wp_customize->add_control('X_hub_show_hslider_text', array(
    'label'      => __('Show Carousel Text?', 'x-hub'),
    'section'    => 'X_hub_blog_home_pslider',
    'settings'   => 'X_hub_show_hslider_text',
    'type'       => 'checkbox',
));

$wp_customize->add_setting('X_hub_show_hslider_dots', array(
    'default'        => '',
    'capability'     => 'edit_theme_options',
    'type'           => 'theme_mod',
    'sanitize_callback' => 'absint',
    'transport' => 'refresh',
));
$wp_customize->add_control('X_hub_show_hslider_dots', array(
    'label'      => __('Show slider dot?', 'x-hub'),
    'section'    => 'X_hub_blog_home_pslider',
    'settings'   => 'X_hub_show_hslider_dots',
    'type'       => 'checkbox',
));
// End home slider style


	//xhub blog settings
    $wp_customize->add_section('x_hub_blog', array(
		'title' => __('X Hub Blog Settings', 'x-hub'),
		'capability'     => 'edit_theme_options',
		'description'     => __('X Hub theme blog settings', 'x-hub'),
		'panel'    => 'x_hub_settings',
	
	));
	$wp_customize->add_setting('x_hub_blog_container', array(
        'default'        => 'container',
        'capability'     => 'edit_theme_options',
        'type'           => 'theme_mod',
        'sanitize_callback' => 'x_hub_sanitize_select',
        'transport' => 'refresh',
    ));
    $wp_customize->add_control('x_hub_blog_container', array(
        'label'      => __('Container type', 'x-hub'),
        'description'=> __('You can set standard container or full width container. ', 'x-hub'),
        'section'    => 'x_hub_blog',
        'settings'   => 'x_hub_blog_container',
        'type'       => 'select',
        'choices'    => array(
            'container' => __('Standard Container', 'x-hub'),
            'container-fluid' => __('Full width Container', 'x-hub'),
        ),
    ));
    $wp_customize->add_setting('x_hub_blog_layout', array(
        'default'        => 'rightside',
        'capability'     => 'edit_theme_options',
        'type'           => 'theme_mod',
        'sanitize_callback' => 'x_hub_sanitize_select',
        'transport' => 'refresh',
    ));
    $wp_customize->add_control('x_hub_blog_layout', array(
        'label'      => __('Select Blog Layout', 'x-hub'),
        'description'=> __('Right and Left sidebar only show when sidebar widget is available. ', 'x-hub'),
        'section'    => 'x_hub_blog',
        'settings'   => 'x_hub_blog_layout',
        'type'       => 'select',
        'choices'    => array(
            'rightside' => __('Right Sidebar', 'x-hub'),
            'leftside' => __('Left Sidebar', 'x-hub'),
            'fullwidth' => __('No Sidebar', 'x-hub'),
        ),
    ));
	$wp_customize->add_setting('x_hub_blog_style', array(
        'default'        => 'list',
        'capability'     => 'edit_theme_options',
        'type'           => 'theme_mod',
        'sanitize_callback' => 'x_hub_sanitize_select',
        'transport' => 'refresh',
    ));
    $wp_customize->add_control('x_hub_blog_style', array(
        'label'      => __('Select Blog Style', 'x-hub'),
        'section'    => 'x_hub_blog',
        'settings'   => 'x_hub_blog_style',
        'type'       => 'select',
        'choices'    => array(
            'list' => __('List Style', 'x-hub'),
            'classic' => __('Classic Style', 'x-hub'),
        ),
    ));
		//xhub page settings
		$wp_customize->add_section('x_hub_page', array(
			'title' => __('X Hub Page Settings', 'x-hub'),
			'capability'     => 'edit_theme_options',
			'description'     => __('X Hub theme blog settings', 'x-hub'),
			'panel'    => 'x_hub_settings',
		
		));
		$wp_customize->add_setting('x_hub_page_container', array(
			'default'        => 'container',
			'capability'     => 'edit_theme_options',
			'type'           => 'theme_mod',
			'sanitize_callback' => 'x_hub_sanitize_select',
			'transport' => 'refresh',
		));
		$wp_customize->add_control('x_hub_page_container', array(
			'label'      => __('Page Container type', 'x-hub'),
			'description'=> __('You can set standard container or full width container for page. ', 'x-hub'),
			'section'    => 'x_hub_page',
			'settings'   => 'x_hub_page_container',
			'type'       => 'select',
			'choices'    => array(
				'container' => __('Standard Container', 'x-hub'),
				'container-fluid' => __('Full width Container', 'x-hub'),
			),
		));	
		$wp_customize->add_setting('x_hub_page_header', array(
			'default'        => 'show',
			'capability'     => 'edit_theme_options',
			'type'           => 'theme_mod',
			'sanitize_callback' => 'x_hub_sanitize_select',
			'transport' => 'refresh',
		));
		$wp_customize->add_control('x_hub_page_header', array(
			'label'      => __('Show Page header', 'x-hub'),
			'section'    => 'x_hub_page',
			'settings'   => 'x_hub_page_header',
			'type'       => 'select',
			'choices'    => array(
				'show' => __('Show all pages', 'x-hub'),
				'hide-home' => __('Hide Only Front Page', 'x-hub'),
				'hide' => __('Hide All Pages', 'x-hub'),
			),
		));	




	if ( isset( $wp_customize->selective_refresh ) ) {
		$wp_customize->selective_refresh->add_partial(
			'blogname',
			array(
				'selector'        => '.site-title a',
				'render_callback' => 'x_hub_customize_partial_blogname',
			)
		);
		$wp_customize->selective_refresh->add_partial(
			'blogdescription',
			array(
				'selector'        => '.site-description',
				'render_callback' => 'x_hub_customize_partial_blogdescription',
			)
		);
	}
}
add_action( 'customize_register', 'x_hub_customize_register' );

/**
 * Render the site title for the selective refresh partial.
 *
 * @return void
 */
function x_hub_customize_partial_blogname() {
	bloginfo( 'name' );
}

/**
 * Render the site tagline for the selective refresh partial.
 *
 * @return void
 */
function x_hub_customize_partial_blogdescription() {
	bloginfo( 'description' );
}

/**
 * Binds JS handlers to make Theme Customizer preview reload changes asynchronously.
 */
function x_hub_customize_preview_js() {
	wp_enqueue_script( 'xhub-customizer', get_template_directory_uri() . '/assets/js/customizer.js', array( 'customize-preview' ), X_HUB_VERSION, true );
}
add_action( 'customize_preview_init', 'x_hub_customize_preview_js' );
