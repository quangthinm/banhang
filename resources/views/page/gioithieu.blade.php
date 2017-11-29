@extends('layout.index')
@section('content')
<div class="breadcrumb">
	<div class="container">
		<ul>
			<li><a href="index.html">Home</a></li>
			<li>About Store</li>
		</ul>
	</div>
</div>
<!-- Content -->
<div id="pageContent">
	<div class="container-fluid box-about offset-0">
		<div class="row">
			<div class="col-md-5 col-lg-6 img">
				<img src="asset/images/custom/img_13.jpg" alt="">
			</div>
			<div class="col-md-7 col-lg-6 box-about-content">
				<h1 class="block-title large">About Store</h1>
				<div class="description">
					12 + pre-made layouts. My Shop is more than a template, <br>It’s a powerful design tool.
				</div>
				<hr>
				<div class="row">
					<div class="col-lg-6">
						<p>
							Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse.
						</p>
					</div>
					<div class="col-lg-6">
						<p>
							Dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse.
						</p>
					</div>
				</div>
				<hr>
				<ul class="list">
					<li>Address : 7563 St. Vicent Place, Glasgow</li>
					<li>Phone: +777 2345 7885</li>
					<li>Fax: +777 2345 7886</li>
					<li>Hours: 7 Days a week from 10:00 am to 6:00 pm</li>
					<li>E-mail: <a href="mailto:info@mydomain.com">info@mydomain.com</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
@endsection