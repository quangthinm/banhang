<?php get_header(); ?>
	<div class="blog">
	<?php if (have_posts()) : ?>
	<?php while (have_posts()) : the_post(); ?>
	    <div class="container">
	        <!--Start breadcrumbs-->
	        <ul class="tz-breadcrumbs">
	            <li>
	                <a href="#">Trang chủ</a>
	            </li>
	            <li class="current">
	                <?php the_title(); ?>
	            </li>
	        </ul>
	        <!--End breadcrumbs-->
	        <div class="blog-container">
	            <div class="row">
	                <div class="col-md-8">
	                    <!--Blog Content-->
	                    <div class="row">
	                        <div class="col-md-12">
	                            <!--Content-->
	                            <article class="single-blog">
	                                <div class="thumb">
	                                    <!--<img src="http://html.templaza.net/bikesport/images/Blog/blog-heading.jpg" class="img-responsive"/>-->
	                                    <?php echo get_the_post_thumbnail( $post_id, 'full', array( 'class' =>'thumnail') ); ?>
	                                </div>
	                                <h1><a href="#"><?php the_title(); ?></a></h1>
	                                <span class="date">Đăng ngày: <?php the_date(); ?></span>
	                                <div class="single-content">
	                                    <?php the_content(); ?>
	                                </div>

	                                <div class="entry-blog-meta">
	                                   <!--like-->
	                                </div>
	                            </article>
	                            <!--End content-->

	                            <!--Comment-->
	                            <div class="single-comment">
	                            	<!--comment-->
	                            </div>
	                            <!--End comment-->

	                        </div>
	                    </div>
	                    <!--End Blog Content-->
	                </div>
	                <div class="col-md-4">
	                    <?php get_sidebar(); ?>
	                </div>
	            </div>
	        </div>
	    </div>
    <?php endwhile; else : ?>
	<p>Không có</p>
	<?php endif; ?>
	</div>
	<!--End Start Blog-->
<?php get_footer(); ?>