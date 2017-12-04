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
                                            <?php echo get_the_post_thumbnail( get_the_id(), 'full', array( 'class' =>'thumnail') ); ?>
                                            <div class="product-meta">
                                                <a class="add-to-cart" href="shop-cart.html">Giỏ hàng</a>
                                                <span class="quick-view">
                                                    <a href="<?php the_permalink(); ?>">Chi tiết</a>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="product-infomation">
                                            <h4><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h4>
                                            <span class="product-price"><?php echo $product->get_price_html(); ?></span>
                                        </div>
                                    </div>
                                </div>
                            <?php endwhile;  wp_reset_postdata(); ?>
                            <!--
                            <div class="col-md-3 col-sm-6">
                                <div class="product-item">
                                    <div class="product-thubnail">
                                        <img src="images/product/product5.jpg" alt="product 2" />
                                        <div class="product-meta">
                                            <a class="add-to-cart" href="shop-cart.html">Add to cart</a>
                                            <span class="quick-view">
                                                <a href="#">Quick view</a>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="product-infomation">
                                        <h4><a href="single-product.html">Defy Advanced SL</a></h4>
                                        <span class="product-price">$1,770.00</span>
                                        <span class="product-attr">
                                            <i class="fa fa-circle light-blue"></i>
                                            <i class="fa fa-circle orange"></i>
                                            <i class="fa fa-circle blueviolet"></i>
                                            <i class="fa fa-circle orange-dark"></i>
                                            <i class="fa fa-circle steelblue"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-6">
                                <div class="product-item">
                                    <div class="product-thubnail">
                                        <img src="images/product/product6.jpg" alt="product 3" />
                                        <div class="product-meta">
                                            <a class="add-to-cart" href="shop-cart.html">Add to cart</a>
                                            <span class="quick-view">
                                                <a href="#">Quick view</a>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="product-infomation">
                                        <h4><a href="single-product.html">FastRoad CoMax</a></h4>
                                        <span class="product-price">$900.00</span>
                                        <span class="product-attr">
                                            <i class="fa fa-circle light-blue"></i>
                                            <i class="fa fa-circle orange"></i>
                                            <i class="fa fa-circle blueviolet"></i>
                                            <i class="fa fa-circle orange-dark"></i>
                                            <i class="fa fa-circle steelblue"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-6">
                                <div class="product-item">
                                    <div class="product-thubnail">
                                        <img src="images/product/product7.jpg" alt="product 4" />
                                        <div class="product-meta">
                                            <a class="add-to-cart" href="shop-cart.html">Add to cart</a>
                                            <span class="quick-view">
                                                <a href="#">Quick view</a>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="product-infomation">
                                        <h4><a href="single-product.html">Propel Advanced SL 0</a></h4>
                                        <span class="product-price">$900.00</span>
                                        <span class="product-attr">
                                            <i class="fa fa-circle light-blue"></i>
                                            <i class="fa fa-circle orange"></i>
                                            <i class="fa fa-circle blueviolet"></i>
                                            <i class="fa fa-circle orange-dark"></i>
                                            <i class="fa fa-circle steelblue"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-6">
                                <div class="product-item">
                                    <div class="product-thubnail">
                                        <img src="images/product/product8.jpg" alt="product 2" />
                                        <div class="product-meta">
                                            <a class="add-to-cart" href="shop-cart.html">Add to cart</a>
                                            <span class="quick-view">
                                                <a href="#">Quick view</a>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="product-infomation">
                                        <h4><a href="single-product.html">Defy Advanced SL</a></h4>
                                        <span class="product-price">$1,770.00</span>
                                        <span class="product-attr">
                                            <i class="fa fa-circle light-blue"></i>
                                            <i class="fa fa-circle orange"></i>
                                            <i class="fa fa-circle blueviolet"></i>
                                            <i class="fa fa-circle orange-dark"></i>
                                            <i class="fa fa-circle steelblue"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-6">
                                <div class="product-item">
                                    <div class="product-thubnail">
                                        <img src="images/product/product9.jpg" alt="product 3" />
                                        <div class="product-meta">
                                            <a class="add-to-cart" href="shop-cart.html">Add to cart</a>
                                            <span class="quick-view">
                                                <a href="#">Quick view</a>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="product-infomation">
                                        <h4><a href="single-product.html">FastRoad CoMax</a></h4>
                                        <span class="product-price">$900.00</span>
                                        <span class="product-attr">
                                            <i class="fa fa-circle light-blue"></i>
                                            <i class="fa fa-circle orange"></i>
                                            <i class="fa fa-circle blueviolet"></i>
                                            <i class="fa fa-circle orange-dark"></i>
                                            <i class="fa fa-circle steelblue"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-6">
                                <div class="product-item">
                                    <div class="product-thubnail">
                                        <img src="images/product/product10.jpg" alt="product 2" />
                                        <div class="product-meta">
                                            <a class="add-to-cart" href="shop-cart.html">Add to cart</a>
                                            <span class="quick-view">
                                                <a href="#">Quick view</a>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="product-infomation">
                                        <h4><a href="single-product.html">Defy Advanced SL</a></h4>
                                        <span class="product-price">$1,770.00</span>
                                        <span class="product-attr">
                                            <i class="fa fa-circle light-blue"></i>
                                            <i class="fa fa-circle orange"></i>
                                            <i class="fa fa-circle blueviolet"></i>
                                            <i class="fa fa-circle orange-dark"></i>
                                            <i class="fa fa-circle steelblue"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-6">
                                <div class="product-item">
                                    <div class="product-thubnail">
                                        <img src="images/product/product8.jpg" alt="product 2" />
                                        <div class="product-meta">
                                            <a class="add-to-cart" href="shop-cart.html">Add to cart</a>
                                            <span class="quick-view">
                                                <a href="#">Quick view</a>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="product-infomation">
                                        <h4><a href="single-product.html">Defy Advanced SL</a></h4>
                                        <span class="product-price">$1,770.00</span>
                                        <span class="product-attr">
                                            <i class="fa fa-circle light-blue"></i>
                                            <i class="fa fa-circle orange"></i>
                                            <i class="fa fa-circle blueviolet"></i>
                                            <i class="fa fa-circle orange-dark"></i>
                                            <i class="fa fa-circle steelblue"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--
    <section class="parallax background-parallax">
        <div class="container">
            <div class="get-in-touch">
                <h3>GET IN TOUCH</h3>
                <p>Have an idea or a project, lets collaborate and build some awesome stuff</p>
                <a class="buynow" href="shop.html">Buy now</a>
            </div>
        </div>
    </section>
    -->
    <section class="section-large">
        <div class="container">
            <div class="box-shadow section-small2">
                <h2 class="tz-title-black text-center">TIN TỨC</h2>
                <div class="row">
                    <div class="col-md-6 col-sm-6">
                        <div class="tz-new-blog">
                            <div class="tzthumbnail">
                                <img src="images/Blog/Blog1.jpg" alt="Blog">
                            </div>
                            <div class="tz-new-content">
                                <h4><a href="single-blog.html">Gulf Today Report On KGS Carnival – 2015</a></h4>
                                <span class="post-date">Posted at March 19. 2015</span>
                                <p>Excellence is never an accident. It is always the result of high intention and intelligent execution; it represents the wise choice of many alternatives.</p>
                                <a href="#" class="continue">Continue Reading</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6">
                        <div class="tz-new-blog">
                            <div class="tzthumbnail">
                                <img src="images/Blog/Blog2.jpg" alt="Blog">
                            </div>
                            <div class="tz-new-content">
                                <h4><a href="blog.html">Excepteur sint ipsum dolor sit amet conse ctetur</a></h4>
                                <span class="post-date">Posted at March 19. 2015</span>
                                <p>Excellence is never an accident. It is always the result of high intention and intelligent execution; it represents the wise choice of many alternatives.</p>
                                <a href="#" class="continue">Continue Reading</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
<?php get_footer(); ?>