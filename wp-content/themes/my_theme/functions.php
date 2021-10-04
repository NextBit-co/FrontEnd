<?php
function load_css(){
    wp_enqueue_style('nextbit-style', get_template_directory_uri() . "./assets/css/navbar.css",array(),'1.0','all');
    wp_enqueue_style('nextbit-footerstyle', get_template_directory_uri() . "./assets/css/footer.css",array(),'1.0','all');
    wp_enqueue_style('nextbit-stylybuble', get_template_directory_uri() . "./assets/css/bubble.css",array(),'1.0','all');
    wp_enqueue_style('nextbit-stylyall', get_template_directory_uri() . "./assets/css/style.css",array(),'1.0','all');
    wp_enqueue_style('nextbit-bootstrap',"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css",array(),'4.3.1','all');
    wp_enqueue_style('nextbit-fontawesome',"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.2/css/all.css",array(),'5.10.2','all');
    wp_enqueue_style('nextbit-fontawesomefooter',"https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css",array(),'4.2.0','all');
}
add_action('wp_enqueue_scripts','load_css');
function load_scripts(){
    wp_enqueue_script('nextbit-jsjquery','https://code.jquery.com/jquery-3.4.1.min.js',array(),'3.4.1',true);
    wp_enqueue_script('nextbit-jsbootstrap','https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js',array(),'4.3.1',true);
    wp_enqueue_script('nextbit-js', get_template_directory_uri() . "./assets/js/navbar.js",array(),'1.0',true);
}
add_action('wp_enqueue_scripts','load_scripts');
?>