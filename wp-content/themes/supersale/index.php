<?php get_header(); ?>
    <div class="section-large-top">
        <div class="container">
            <div class="tz-shortcode-tabs">
                <div class="tab-content">
                    <div class="tab-pane active" id="one_read">
                        <div class="row">
                            <div class="col-md-4 col-sm-6">
                                <div class="product-item">
                                    <img src="images/ex.jpg" class="img-respnsive"/>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6">
                                <div class="product-item">
                                    <img src="images/ex.jpg" class="img-respnsive"/>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6">
                                <div class="product-item">
                                    <img src="images/ex.jpg" class="img-respnsive"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="section-large-top">
        <div class="container">
            <div class="tz-shortcode-tabs">
                <div class="tz-tabs-header">
                    <h2 class="tz-tabs-title text-center">SẢN PHẨM NỔI BẬT</h2>
                </div>
                <div class="tab-content">
                    <div class="tab-pane active" id="baby_seats">
                        <!--Start product-->
                        <div class="row row-item">                            
                            <?php $args = array( 'post_type' => 'product','posts_per_page' =>12,); ?>
                                <?php $getposts = new WP_query( $args);?>
                                <?php global $wp_query; $wp_query->in_the_loop = true; ?>
                                <?php while ($getposts->have_posts()) : $getposts->the_post(); ?>
                                <?php global $product; ?>
                                <div class="col-md-3 col-sm-6">
                                    <div class="product-item">
                                        <div class="product-thubnail">
                                            <a href="<?php the_permalink(); ?>"><?php echo get_the_post_thumbnail( get_the_id(), 'full', array( 'class' =>'thumnail') ); ?></a>
                                            <!--
                                            <div class="product-meta">
                                                <a class="aadd-to-cart" href="#">Giỏ hàng</a>
                                                <span class="quick-view">
                                                    <a href="<?php the_permalink(); ?>">Chi tiết</a>
                                                </span>
                                            </div>
                                            -->
                                        </div>
                                        <div class="product-infomation">
                                            <h4><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h4>
                                            <div class="product-price"><?php echo $product->get_price_html(); ?></div>
                                        </div>
                                    </div>
                                </div>
                            <?php endwhile;  wp_reset_postdata(); ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <section class="section-large">
        <div class="container">
            <div class="box-shadow section-small2">
                <h2 class="tz-title-black text-center">TIN TỨC</h2>
                <div class="row">
                    <?php if (have_posts()) : ?>
                    <?php while (have_posts()) : the_post(); ?>
                        <div class="col-md-6 col-sm-6">
                            <div class="tz-new-blog">
                                <div class="tzthumbnail">
                                    <?php echo get_the_post_thumbnail( $post_id, 'full', array( 'class' =>'thumnail') ); ?>
                                </div>
                                <div class="tz-new-content">
                                    <h4><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h4>
                                    <span class="post-date">Đăng ngày: <?php the_date(); ?></span>
                                    <p><?php echo teaser(20); ?></p>
                                    <a href="<?php the_permalink(); ?>" class="continue">Đọc tiếp</a>
                                </div>
                            </div>
                        </div>
                    <?php endwhile; else : ?>
                    <p>Không có</p>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    </section>
<?php get_footer(); ?>