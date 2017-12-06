<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <base href="<?php echo bloginfo('template_directory') ?>/"/>
    <link href="css/bootstrap.min.css" rel="stylesheet" type='text/css'>
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet"/>
    <link href='fonts/stylesheet.css' rel='stylesheet' type='text/css'>
    <link href='css/owl.carousel.css' rel='stylesheet' type='text/css'>
    <link href='css/owl.theme.css' rel='stylesheet' type='text/css'>
    <link href="rs-plugin/css/settings.css" rel="stylesheet" type='text/css'>
    <link href="css/custom.css" rel="stylesheet" type='text/css'>
    <?php wp_head() ?>
</head>
<body>
    <div class="tz-site">
        <header id="tz-header" class="bk-white">
            <div class="container">
                <div class="header-top">
                    <ul class="pull-left">
                        <li>
                            <a href="#">Gọi ngay:   (012) 3456 7890</a>
                        </li>
                    </ul>
                    <ul class="pull-right">
                        <li>
                            <a href="shop-cart.html">Giỏ hàng</a>
                        </li>
                        <li class="tz-header-login">
                            <a href="#">Đăng nhập</a>
                            <div class="tz-login-form">
                                <form>
                                    <p class="form-content">
                                        <label for="username">Username / Email</label>
                                        <input type="text" name="username" id="username" value="">
                                    </p>
                                    <p class="form-content">
                                        <label for="password">Password</label>
                                        <input type="password" name="username" id="password" value="">
                                    </p>
                                    <p class="form-footer">
                                        <a href="#">Lost Password?</a>
                                        <button type="submit" class="pull-right button_class">LOGIN</button>
                                    </p>
                                    <p class="form-text">
                                        Don't have an account? <a href="shop-register.html">Register Here</a>
                                    </p>
                                </form>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="header-content">
                    <h3 class="tz-logo pull-left"><a href="<?php bloginfo('url'); ?>"><img src="images/logo.png" alt="home" /></a></h3>
                    <div class="tz-search pull-right">
                        <form action="<?php bloginfo('url'); ?>/" method="GET" role="form">
                            <input type="hidden" name="post_type" value="product">
                            <input type="text" class="tz-query" name="s" id="tz-query" value="" placeholder="Tìm kiếm sản phẩm">
                            <button type="submit"></button>
                        </form>
                        <div class="live-search">
                            <ul>
                                <li>
                                    <div class="live-img"><img src="images/product/product-search1.jpg" alt="product search one"></div>
                                    <div class="live-search-content">
                                        <h6><a href="single-product.html">Defy Advanced</a></h6>
                                        <span class="live-meta">
                                            <a href="single-product.html">$2650.00</a>
                                            <span class="product-color">
                                                <i class="light-blue"></i>
                                                <i class="orange"></i>
                                                <i class="orange-dark"></i>
                                            </span>
                                        </span>
                                    </div>
                                </li>
                                <li>
                                    <div class="live-img"><img src="images/product/product-search2.jpg" alt="product search two"></div>
                                    <div class="live-search-content">
                                        <h6><a href="single-product.html">Defy Advanced</a></h6>
                                        <span class="live-meta">
                                            <a href="single-product.html">$2650.00</a>
                                            <span class="product-color">
                                                <i class="light-blue"></i>
                                                <i class="orange"></i>
                                                <i class="blueviolet"></i>
                                                <i class="orange-dark"></i>
                                            </span>
                                        </span>
                                    </div>
                                </li>
                                <li>
                                    <div class="live-img"><img src="images/product/product-search3.jpg" alt="product search one"></div>
                                    <div class="live-search-content">
                                        <h6><a href="single-product.html">Defy Advanced</a></h6>
                                        <span class="live-meta">
                                            <a href="single-product.html">$2650.00</a>
                                            <span class="product-color">
                                                <i class="blueviolet"></i>
                                                <i class="light-blue"></i>
                                                <i class="orange-dark"></i>
                                                <i class="orange"></i>
                                            </span>
                                        </span>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <nav class="tz-menu-primary">
                <div class="container">                    
                    <!--
                    <ul class="tz-main-menu pull-left nav-collapse">
                        <li>
                            <a href="index.html">Home</a>
                        </li>
                        <li>
                            <a href="shop.html">Shop</a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="shop-rightsidebar.html">Shop Right</a>
                                </li>
                                <li>
                                    <a href="shop-cart.html">Shop Cart</a>
                                </li>
                                <li>
                                    <a href="shop-checkout.html">Shop Checkout</a>
                                </li>
                                <li>
                                    <a href="shop-register.html">Shop Register</a>
                                </li>
                                <li>
                                    <a href="single-product.html">Shop Single</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="blog.html">
                                Blog
                            </a>
                        </li>
                        <li>
                            <a href="contact.html">Contact</a>
                        </li>
                    </ul>
                    -->
                        <?php wp_nav_menu( 
                            array( 
                                'theme_location' => 'topmenu', 
                                'container' => 'false', 
                                'menu_id' => 'header-menu', 
                                'menu_class' => 'tz-main-menu pull-left nav-collapse'
                            ) 
                        ); ?>
                    
                    <ul class="tz-ecommerce-meta pull-right">
                        <li class="tz-mini-cart">
                            <a href="shop-cart.html">                                  
                                Giỏ hàng : <?php echo sprintf (_n( '%d Sản phẩm', '%d Sản phẩm', WC()->cart->cart_contents_count ), WC()->cart->cart_contents_count ); ?> - <?php echo WC()->cart->get_cart_total(); ?>
                            </a>
                            <ul class="cart-inner">
                                <?php
                                    global $woocommerce;
                                    $items = $woocommerce->cart->get_cart();
                                    $totalcart;
                                    $haveitems = 0;
                                    foreach($items as $item => $values) { 
                                    $_product = apply_filters( 'woocommerce_cart_item_product', $values['data'], $values, $item );
                                    if ( $_product && $_product->exists() && $values['quantity'] > 0){
                                    $haveitems = 1;
                                    $_product = wc_get_product( $values['data']->get_id() );
                                 
                                    $linkpro= get_permalink( $values['product_id'] );
                                    $titlepro= $_product->get_title();
                                    $getProductDetail = wc_get_product( $values['product_id'] );
                                    $imgpro = $getProductDetail->get_image(array(80,80));
                                    $pricepro = get_post_meta($values['product_id'] , '_price', true);
                                    $quantitypro = $values['quantity'];
                                 
                                ?>
                                <li class="mini-cart-content">
                                    <div class="mini-cart-img">
                                    <?php echo $imgpro ?>
                                    </div>
                                    <div class="mini-cart-ds">
                                        <h6><a href="<?php echo $linkpro; ?>"><?php echo $titlepro; ?></a></h6>
                                        <span class="mini-cart-meta">
                                            Giá: <?php echo number_format($pricepro); ?>
                                            <span class="mini-meta">
                                               <span class="mini-color">Số lượng: <?php echo $quantitypro; ?></span>
                                            </span>
                                        </span>
                                    </div>
                                    <a href=""><span class="mini-cart-delete"><img src="images/delete.png" alt="delete"></span></a>
                                </li>
                                <?php 
                                    }
                                }
                                ?>
                                <li class="mini-subtotal">
                                    <span class="subtotal-content">
                                        Tổng:
                                        <strong class="pull-right"><?php echo WC()->cart->get_cart_subtotal(); ?></strong>
                                    </span>
                                </li>
                                <li class="mini-footer">
                                    <a href="<?php echo wc_get_cart_url(); ?>" class="view-cart">View Cart</a>
                                    <a href="shop-checkout.html" class="check-out">Checkout</a>
                                </li>
                            </ul>
                            <!--End mini cart-->

                        </li>
                    </ul>
                    <button data-target=".nav-collapse" class="btn-navbar tz_icon_menu" type="button">
                        <i class="fa fa-bars"></i>
                    </button>
                </div>
            </nav>
        </header>