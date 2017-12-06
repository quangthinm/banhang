<?php get_header() ?>
<section class="tz-shop-single">
	<?php if (have_posts()) : ?>
    <?php while (have_posts()) : the_post(); ?>
		<div class="container">
		    <!--Start Breadcrumbs-->
		    <ul class="tz-breadcrumbs">
		        <li>
		            <a href="<?php bloginfo('url'); ?>">Home</a>
		        </li>
		        <li class="current">
		            <?php the_title(); ?>
		        </li>
		    </ul>
		    <!--End Breadcrumbs-->
		    <div class="row">
		        <div class="col-md-6 col-sm-6">
		            <!--Shop images-->
		            <div class="shop-images">
		                <ul class="single-gallery">
		                    <!--
		                    <li>
		                        <img src="http://html.templaza.net/bikesport/images/product/single-p.jpg" alt="Propel Advanced Pro">
		                    </li>
		                    <li>
		                        <img src="http://html.templaza.net/bikesport/images/product/single-p.jpg" alt="Propel Advanced Pro">
		                    </li>
		                    <li>
		                        <img src="http://html.templaza.net/bikesport/images/product/single-p.jpg" alt="Propel Advanced Pro">
		                    </li>
		                    -->
		                    <?php
							 	global $product;
							 	$attachment_ids = $product->get_gallery_attachment_ids();
								foreach( $attachment_ids as $attachment_id ) {
									$image_link = wp_get_attachment_url( $attachment_id );
									echo '<img src="'.$image_link.'" alt=""/>';
								}
							?>
		                </ul>
		            </div>
		            <!--End shop image-->
		        </div>
		        <div class="col-md-6 col-sm-6">
		            <!--Shop content-->
		            <div class="entry-summary">
		                <h1><?php the_title(); ?></h1>
		                <span class="p-vote">
		                    <i class="fa fa-star"></i>
		                    <i class="fa fa-star"></i>
		                    <i class="fa fa-star"></i>
		                    <i class="fa fa-star"></i>
		                    <i class="fa fa-star-half-o"></i>
		                </span>
		                <p class="product-price">
		                    <span class="price"><?php echo $product->get_price_html(); ?></span>
		                </p>
		                <div class="description">
	                        <?php echo teaser(20); ?>
		                </div>
		                <form class="tz_variations_form " action="" method="post">
		                    <p class="form-attr">
		                        <span class="color">
		                            <label>Số lượng:</label>
		                            <input type="number" step="1" min="1" name="quantity" value="1" title="Qty" class="input-text qty text" size="4"><input type="hidden" name="add-to-cart" value="<?php the_id(); ?>">
		                        </span>
		                    </p>
		                    <p>
		                    	<input type="hidden" name="add-to-cart" value="<?php the_id(); ?>">
		                        <button type="submit" class="single_add_to_cart_button">Thêm vào giỏ hàng</button>
		                    </p>
		                </form>
		            </div>
		            <!--End shop content-->
		        </div>
		    </div>
		    <!--Shop tabs-->
			<div class="tz-shop-tabs">
			    <div class="container">
			        <div class="tab-head">
			            <ul class="nav nav-tabs">
			                <li role="presentation" class="active"><a href="#description" data-toggle="tab">Mô tả sản phẩm</a></li>
			            </ul>
			        </div>
			        <div class="tab-content">
			            <div class="tab-pane active" id="description">
			                <?php the_content(); ?>
			            </div>
			        </div>
			    </div>
			</div>
		</div>
	<?php endwhile; else : ?>
    <p>Không có</p>
    <?php endif; ?>
	<div class="container">
	    <div class="box-shadow">
	        <!--Tabs header-->
	        <div class="tz-tabs-header">
	            <h2 class="tz-tabs-title text-center">Widget Products</h2>
	        </div>
	        <!--End tab header-->
	        <!--Tab content-->
	        <div class="tab-content">
	            <!--Tab item-->
	            <div class="tab-pane active" id="one_read">
	                <div class="row row-item">
	                    <div class="col-md-3 col-sm-6">
	                        <!--Start product item-->
	                        <div class="product-item">
	                            <div class="product-thubnail">
	                                <img src="images/product/product4.png" alt="product 4" />
	                                <div class="product-meta">
	                                    <a class="add-to-cart" href="shop-cart.html">Giỏ hàng</a>
	                                    <span class="quick-view">
	                                        <a href="#">Chi tiết</a>
	                                    </span>
	                                </div>
	                            </div>
	                            <div class="product-infomation">
	                                <h4><a href="single-product.html">Propel Advanced SL 0</a></h4>
	                                <span class="product-price">$900.00</span>
	                            </div>
	                        </div>
	                        <!--End product item-->
	                    </div>
	                    <div class="col-md-3 col-sm-6">

	                        <!--Start product item-->
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
	                        <!--End product item-->

	                    </div>
	                    <div class="col-md-3 col-sm-6">

	                        <!--Start product item-->
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
	                        <!--End product item-->

	                    </div>
	                    <div class="col-md-3 col-sm-6">

	                        <!--Start product item-->
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
	                        <!--End product item-->

	                    </div>
	                </div>
	            </div>
	            <!--End tab item-->
	        </div>
	        <!--End tab content-->

	    </div>
	</div>
</section>
<?php get_footer() ?>