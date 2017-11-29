@extends('admin.layout.index')
@section('content')
<div id="page-wrapper" >
	<div class="header"> 
		<h1 class="page-header">
		    Sửa <small>kiến thức</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="admin/trang-chu">Trang chủ</a></li>
			<li><a href="{{route('danhsachkienthuc')}}">Kiến thưc</a></li>
			<li class="active">Sửa</li>
		</ol>			
	</div>

	<div id="page-inner">       
	    <div class="row">
	        <div class="col-md-12">
	            <!-- Advanced Tables -->
	            <div class="panel panel-default">
	                <div class="panel-heading">
	                    Sửa kiến thức
	                </div>
	                <div class="panel-body">
	                    <div class="table-responsive">
		                     @if(count($errors) > 0)
		                    	<div class="alert alert-danger">
			                    	@foreach($errors->all() as $err)
			                    		{{$err}}<br/>
			                    	@endforeach
		                    	</div>
		                    @endif
		                    @if(session('thongbao'))
		                    	<div class="alert alert-success">
			                    	{{session('thongbao')}}
		                    	</div>
		                    @endif
	                    	<form class="form-horizontal" action="admin/kienthuc/sua/{{$kienthuc->id}}" method="post" enctype="multipart/form-data">
	                    		<input type="hidden" name="_token" value="{{csrf_token()}}">
								<!-- Text input-->
								<div class="form-group">
								  	<label class="col-md-2 control-label" for="newstitle">
								  		Tiêu đề
								  	</label>  
								  	<div class="col-md-10">
								  		<input id="newstitle" name="newstitle" type="text" value="{{$kienthuc->news_title}}" class="form-control input-md">
								  	</div>
								</div>
								<!-- Text input-->
								<div class="form-group">
								  	<label class="col-md-2 control-label" for="newsslug">
								  		Slug
								  	</label>  
								  	<div class="col-md-10">
								  		<input id="newsslug" name="newsslug" type="text" value="{{$kienthuc->slug}}" class="form-control input-md">   
							 	 	</div>
								</div>
								<!-- Text input-->
								<div class="form-group">
								  	<label class="col-md-2 control-label" for="newsderc">
								  		Mô tả
								  	</label>  
								  	<div class="col-md-10">
								  		<textarea name="productderc" id="editor1" rows="10" cols="80">{{$kienthuc->news_derc}}</textarea>
								  	</div>
								</div>
								<div class="form-group">
								  	<label class="col-md-2 control-label" for="newsdetail">
								  		Chi tiết
								  	</label>  
								  	<div class="col-md-10">								  	
								  		<textarea name="productdetail" id="editor1" rows="10" cols="80">{{$kienthuc->news_detail}}</textarea>
								  	</div>
								</div>
								<div class="form-group">
								  	<label class="col-md-2 control-label" for="newsdetail">
								  		Hình
								  	</label>  
								  	<div class="col-md-10">								  	
								  		<img src="asset/news/{{$kienthuc->news_img}}"/>
								  	</div>
								</div>
								<div class="form-group">
								  	<label class="col-md-2 control-label" for="newsimg">
								  		Hình ảnh đại diện
								  	</label>  
								  	<div class="col-md-10">								  	
								  		<input type="file" id="newsimg" name="newsimg" class="form-control input-md">
								  	</div>
								</div>
								<div class="form-group">
									<label class="col-md-2 control-label" for="MaxLoanAmount">
								  	</label> 
									<div class="col-md-10" >
									  	<button type="submit" class="btn btn-success">Sửa</button>
	  									<button type="reset" class="btn btn-danger">Tải lại</button>
	  								</div>
								</div>
							</form>
	                    </div>	                    
	                </div>
	            </div>
	            <!--End Advanced Tables -->
	        </div>
	    </div>
	</div>
</div>
@endsection