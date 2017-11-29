@extends('layout.index')
@section('content')
<div class="breadcrumb">
	<div class="container">
		<ul>
			<li><a href="index.html">Home</a></li>
			<li>Listing</li>
		</ul>
	</div>
</div>
<!-- Content -->
<div id="pageContent">
	<div class="container offset-0">
		<div class="row">
			<!-- left col -->
			<div class="slide-column-close">
				<a href="#"><span class="icon icon-close"></span>Đóng</a>
			</div>
			<div class="col-md-4 col-lg-3 col-xl-3 aside leftColumn">
				<p class="mtit">DANH MỤC</p>
				<ul class="danhmuc">
					@foreach($danhmuccon as $dmc)
					<li><a href="">{{$dmc->sub_name}}</a></li>
					@endforeach
				</ul>
			</div>
			<!-- center col -->
			<div class="col-md-8 col-lg-9 col-xl-9">
				<div class="content offset-0">
					<div class="number-of-products pull-right">33 Item(s)</div>
					<h1 class="block-title text-left">THỰC PHẨM CHỨC NĂNG</h1>
				</div>
				<div class="content">
					<hr>
				</div>
				<div class="content">
					<div class="filters-row row ">
						<div class="pull-left">
							<div class="filters-row_select hidden-sm hidden-xs">
								<label>Sort by:</label>
								<select class="form-control sort-position">
									<option>Featured</option>
									<option>Price</option>
									<option>Rating</option>
								</select>
							</div>
							<a class="btn slide-column-open hidden-lg hidden-md" href="#">DANH MỤC</a>
							<div class="filters-row_mode hidden-sm hidden-xs">
								<a class="link-view link-sort-top active" href="#"><span class="icon icon-sort "></span></a>
								<a class="link-view link-sort-bottom" href="#"><span class="icon icon-sort"></span></a>
							</div>
						</div>
						<div class="pull-right">
							<div class="filters-row_select  hidden-sm hidden-xs">
								<label>Show:</label>
								<select class="form-control show-qty">
									<option>25</option>
									<option>50</option>
									<option>100</option>
								</select>
								<a href="#" class="icon icon-arrow-down active"></a><a href="#" class="icon icon-arrow-up"></a>
							</div>
						</div>
					</div>
				</div>
				<div class="product-listing row">
					@foreach($sanpham as $sp)
					<div class="col-xs-6 col-sm-4 col-md-4 col-lg-one-three">
						<div class="product">
							<div class="product_inside">
								<div class="image-box">
									<a href="product.html">
									<img src="asset/products/{{$sp->Product_Img}}" alt="">
									</a>
									<a href="#" data-toggle="modal" data-target="#ModalquickView" class="quick-view">
									<span>
									<span class="icon icon-visibility"></span>MUA NGAY
									</span>
									</a>
								</div>
								<h2 class="title">
									<a href="product.html">{{$sp->Product_name}}</a>
								</h2>
								<div class="price">
									{{number_format($sp->Product_Price)}}
								</div>
							</div>
						</div>
					</div>
					@endforeach
				</div>
				<div class="content">
					<hr>
				</div>
				<!--
				<div class="content offset-40">
					<div class="pagination">
						<ul>
							<li><a href="#">1</a></li>
							<li class="active"><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">...</a></li>
							<li><a href="#">12</a></li>
						</ul>
						<a class="btn" href="#">NEXT<span class="icon icon-chevron_right"></span></a>
					</div>
				</div>
				-->
			</div>
		</div>
	</div>
</div>
@endsection