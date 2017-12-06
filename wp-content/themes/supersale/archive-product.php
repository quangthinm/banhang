<?php get_header(); ?>
<div class="tz-shop">
    <div class="container">
        <div class="row">
			<div class="col-md-12">
			    <!--Start shop content-->
			    <div class="tz-shop-content">
			        <ul class="tz-breadcrumbs">
			            <li>
			                <a href="#">Home</a>
			            </li>
			            <li class="current">
			                Category
			            </li>
			        </ul>
			        <div class="tz-product row grid-eff">
			        	<?php if (have_posts()) : ?>
                    	<?php while (have_posts()) : the_post(); ?>
								<div class="product-item col-md-3 col-sm-6">
					                <div class="item">
					                    <div class="product-item-inner">
					                        <div class="product-thumb">
					                            <?php echo get_the_post_thumbnail( get_the_id(), 'full', array( 'class' =>'thumnail') ); ?>
					                        </div>
					                        <div class="product-info">
					                            <h4><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h4>
					                            <span class="p-meta">
					                                <span class="p-price"><?php echo $product->get_price_html(); ?></span>
					                            </span>
					                            <span class="p-mask">
					                                <a href="?add-to-cart=<?php the_id(); ?>" class="add-to-cart">Giỏ hàng</a>
					                               	<span class="quick-view">
					                                    <a href="<?php the_permalink(); ?>"><i class="fa fa-eye"></i> Chi tiết</a>
					                                </span>
					                            </span>
			                        		</div>
					                    </div>
					                </div>
					            </div>
						<?php endwhile; else : ?>
	                    <p>Không có</p>
	                    <?php endif; ?>					
			        </div>
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
			    </div>
			</div>
		</div>
	</div>
</div>
<?php get_footer(); ?>