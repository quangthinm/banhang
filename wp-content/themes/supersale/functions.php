<?php
function themeset(){
	register_nav_menu('topmenu',__( 'Main menu' ));
}
add_action('init', 'themeset');
?>