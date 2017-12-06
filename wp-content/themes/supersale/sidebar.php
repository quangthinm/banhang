<div class="blog-sidebar">
    <aside class="widget widget_recent_posts">
        <h4 class="widget-title">RECENT POSTS</h4>
        <ul>
        	<?php $getposts = new WP_query(); $getposts->query('post_status=publish&showposts=10&post_type=post&cat=1'); ?>
			<?php global $wp_query; $wp_query->in_the_loop = true; ?>
			<?php while ($getposts->have_posts()) : $getposts->the_post(); ?>
				<li>
	                <?php echo get_the_post_thumbnail( $post_id, 'full', array( 'class' =>'thumnail') ); ?>
	                <div class="recent-info">
	                    <h5><a href="<?php the_permalink() ?>"><?php the_title(); ?></a></h5>
	                    <span class="date">Đăng ngày <?php the_date(); ?></span>
	                </div>
	            </li>
			<?php endwhile; wp_reset_postdata(); ?>
        </ul>
    </aside>
</div>