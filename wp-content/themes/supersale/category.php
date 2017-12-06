<?php get_header(); ?>
	<div class="blog">
	    <div class="container">
	        <!--Start breadcrumbs-->
	        <ul class="tz-breadcrumbs">
	            <li>
	                <a href="<?php bloginfo('url'); ?>">Trang chủ</a>
	            </li>
	            <li class="current">
	                Tin tức
	            </li>
	        </ul>
	        <!--End breadcrumbs-->
	        <div class="blog-container">
	            <div class="row">
	                <div class="col-md-12">
                        <div class="row tz-blog-content">                        	
							<?php if (have_posts()) : ?>
							<?php while (have_posts()) : the_post(); ?>
                            <div class="col-md-4 col-sm-4">
                                <article class="blog-item">
                                    <div class="thumb">
                                        <?php echo get_the_post_thumbnail( $post_id, 'full', array( 'class' =>'thumnail') ); ?>
                                    </div>
                                    <div class="blog-info">
                                        <h3><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
                                        <span class="entry-meta">Đăng ngày <?php the_date(); ?></span>
                                            <?php echo teaser(20); ?>
                                        <a class="continue" href="<?php the_permalink(); ?>">Đọc tiếp</a>
                                    </div>
                                </article>
                            </div>
                            <?php endwhile; else : ?>
		                    <p>Không có</p>
		                    <?php endif; ?>
                        </div>
                        <!--paginate-->
                        <?php if(paginate_links()!='') {?>
							<nav class="pagination">
								<?php
								global $wp_query;
								$big = 999999999;
								echo paginate_links( array(
									'base' => str_replace( $big, '%#%', esc_url( get_pagenum_link( $big ) ) ),
									'format' => '?paged=%#%',
									'prev_text'    => __('«'),
									'next_text'    => __('»'),
									'current' => max( 1, get_query_var('paged') ),
									'total' => $wp_query->max_num_pages
									) );
							    ?>
							</nav>
						<?php } ?>
						<!--end paginate-->
                    </div>
	            </div>
	        </div>
	    </div>
	</div>
	<!--End Start Blog-->
<?php get_footer(); ?>