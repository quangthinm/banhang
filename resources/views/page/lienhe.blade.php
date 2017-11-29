@extends('layout.index')
@section('content')
<div class="breadcrumb">
	<div class="container">
		<ul>
			<li><a href="index.html">Home</a></li>
			<li>Contact</li>
		</ul>
	</div>
</div>
<!-- Content -->
<div id="pageContent">
	<div class="container offset-18">
		<h1 class="block-title large">Liên hệ với chúng tôi</h1>
		<div class="row">
			<div class="col-sm-5 offset-98">
				<h2 class="block-title big text-left text-capitalize">Thông tin</h2>
					<div class="contact-layout-02">
						<ul class="list-information">
						<li>
							<span class="icon icon-home"></span>
							Địa chỉ : 7563 St. Vicent Place, Glasgow
						</li>
						<li>
							<span class="icon icon-call"></span>
							Số điện thoại: +777 2345 7885; +777 2345 7886
						</li>
						<li>
							<span class="icon icon-schedule"></span>
							Giờ làm việc: 7 Days a week from 10:00 am to 6:00 pm
						</li>
						<li>
							<span class="icon icon-mail"></span>
							E-mail: <a href="mailto:info@mydomain.com">info@mydomain.com</a>
						</li>
					</ul>
					<div class="social-icon-round">
						<ul>
							<li><a class="icon fa fa-facebook" href=""></a></li>
							<li><a class="icon fa fa-twitter" href=""></a></li>
							<li><a class="icon fa fa-google-plus" href=""></a></li>
							<li><a class="icon fa fa-instagram" href=""></a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-sm-7 offset-98">
				<h2 class="block-title big text-left text-capitalize">Gửi liên hệ</h2>
				<form action="#" class="contact-form">
					<div class="form-group">
						<label for="inputName">Tên</label>
						<input type="text" class="form-control" id="inputName" placeholder="Tên">
					</div>
					<div class="form-group">
						<label for="inputEmail">E-mail</label>
						<input type="text" class="form-control" id="inputEmail" placeholder="E-mail">
					</div>
					<div class="form-group">
						<label for="inputName">Nội dung</label>
						<textarea  class="form-control" rows="8" placeholder="Nội dung"  id="textareaMessage"></textarea>
					</div>
					<button class="btn" type="submit">Gửi</button>
				</form>
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="row contact-map">
			<div id="map">bản đồ</div>
		</div>
	</div>
</div>
@endsection