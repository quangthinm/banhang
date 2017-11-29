@extends('layout.index')
@section('content')
<div id="pageContent">
	<div class="container-fluid offset-0">
		<div class="row">
			<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
					<li data-target="#carousel-example-generic" data-slide-to="1"></li>
					<li data-target="#carousel-example-generic" data-slide-to="2"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img src="asset/images/slides/slide-1.jpg" alt="..." class="img-responsive" style="width:100%">
						<div class="carousel-caption">
						...
						</div>
					</div>
					<div class="item">
						<img src="asset/images/slides/slide-2.jpg" alt="..." class="img-responsive" style="width:100%">
						<div class="carousel-caption">
						...
						</div>
					</div>
					<div class="item">
						<img src="asset/images/slides/slide-3.jpg" alt="..." class="img-responsive" style="width:100%">
						<div class="carousel-caption">
						...
						</div>
					</div>
				</div>

				<!-- Controls -->
				<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
					<span class="fa-chevron fa fa-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a>
				<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
					<span class="fa-chevron fa fa-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</div>
	<div class="container hidden-mobile">
		<hr>
	</div>
	<div class="container">
		<h1 class="block-title">SẢN PHẨM</h1>
		<div class="row product-listing carousel-products-mobile products-mobile-arrow">
			@foreach($sanpham as $sp)
			<div class="col-xs-6 col-sm-4 col-md-3 ">
				<div class="product">
					<div class="product_inside">
						<div class="image-box">
							<a href="product.html">
								<img src="asset/products/{{$sp->Product_Img}}" alt="">
								<div class="label-new">New</div>
							</a>
							<a href="#" data-toggle="modal" data-target="#ModalquickView" class="quick-view">
							<span>MUA NGAY</span>
							</a>
						</div>
						<h2 class="title">
							<a href="product.html">{{$sp->Product_name}}</a>
						</h2>
						<div class="price view">
							{{number_format($sp->Product_Price)}}
						</div>
					</div>
				</div>
			</div>
			@endforeach
		</div>
	</div>
	<div class="container hidden-mobile">
		<hr>
	</div>
	<div class="container">
		<h2 class="block-title">KIẾN THỨC</h2>
		<div class="row">
			<div class="carousel-products-mobile blog-thumb-listing">
			@foreach($kienthuc as $kt)
				<div class="col-xs-6 col-sm-4">
					<div class="blog-thumb">
						<a class="img" href="blog_single_post_01.html">
						<img src="asset/news/{{$kt->news_img}}" alt="">
						</a>
						<a class="title" href="">{{$kt->news_title}}</a>
						<p class="data">
							by <a href="#">StyList</a> on {{$kt->created_at}}</b>
						</p>
						<div class="news_derc">
							{{$kt->news_derc}}
						</div>
					</div>
				</div>
			@endforeach
			</div>
		</div>
	</div>
</div>
@endsection