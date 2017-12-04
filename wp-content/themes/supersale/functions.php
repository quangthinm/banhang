<?php
function themeset(){
	register_nav_menu('topmenu',__( 'Main menu' ));
	add_theme_support('post-thumbnails');
}
add_action('init', 'themeset');
?>