@extends('layout.index')
@section('content')
<div class="breadcrumb">
	<div class="container">
		<ul>
			<li><a href="index.html">Home</a></li>
			<li>Kiến thức</li>
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
				<p class="mtit">Facebook</p>
				
			</div>
			<!-- center col -->
			<div class="col-md-8 col-lg-9 col-xl-9">
				<div class="content offset-0">
					<h1 class="block-title text-left">KIẾN THỨC</h1>
				</div>
				<div class="content">
					<hr>
				</div>
				<div class="row">
					<div class="carousel-products-mobile blog-thumb-listing">
					@foreach($kienthuc as $kt)
						<div class="col-xs-6 col-sm-4">
							<div class="blog-thumb">
								<a class="img" href="kien-thuc/{{$kt->id}}/{{$kt->slug}}">
								<img src="asset/news/{{$kt->news_img}}" alt="">
								</a>
								<a class="title" href="kien-thuc/{{$kt->id}}/{{$kt->slug}}">{{$kt->news_title}}</a>
								<p class="data">
									by <a href="#">StyList</a> on {{$kt->created_at}}
								</p>
								<div>
									{{$kt->news_derc}}
								</div>
							</div>
						</div>
					@endforeach
					</div>
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