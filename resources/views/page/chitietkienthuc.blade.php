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
					<div class="">
						{{$kienthuc->news_derc}}
					</div>
				</div>
				<div class="content">
					<hr>
				</div>
			</div>
		</div>
	</div>
</div>
@endsection