@extends('admin.layout.index')
@section('content')
<div id="page-wrapper" >
	<div class="header"> 
		<h1 class="page-header">
		    Sửa <small>sản phẩm</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="admin/trang-chu">Trang chủ</a></li>
			<li><a href="{{route('danhsachsanpham')}}">Sản phẩm</a></li>
			<li class="active">Sửa</li>
		</ol>			
	</div>

	<div id="page-inner">       
	    <div class="row">
	        <div class="col-md-12">
	            <!-- Advanced Tables -->
	            <div class="panel panel-default">
	                <div class="panel-heading">
	                    Sửa sản phẩm
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
	                    	<form class="form-horizontal" action="admin/sanpham/sua/{{$sanpham->id}}" method="post" enctype="multipart/form-data">
	                    		<input type="hidden" name="_token" value="{{csrf_token()}}">
								<!-- Text input-->
								<div class="form-group">
								  	<label class="col-md-2 control-label" for="ProductName">
								  		Tên sản phẩm
								  	</label>  
								  	<div class="col-md-10">
								  		<input id="ProductName" name="ProductName" type="text" placeholder="Tên sản phẩm" class="form-control input-md" value="{{$sanpham->Product_name}}">
								  	</div>
								</div>
								<!-- Text input-->
								<div class="form-group">
								  	<label class="col-md-2 control-label" for="ProductSlug">
								  		Slug
								  	</label>  
								  	<div class="col-md-10">
								  		<input id="ProductSlug" name="ProductSlug" type="text" placeholder="Slug" class="form-control input-md" value="{{$sanpham->Slug}}">   
							 	 	</div>
								</div>
								<!-- Text input-->
								<div class="form-group">
								  	<label class="col-md-2 control-label" for="ProductPrice">
								  		Giá sản phẩm								  	</label>  
								  	<div class="col-md-10">
								  		<input id="ProductPrice" name="ProductPrice" type="number" placeholder="Giá sản phẩn" class="form-control input-md" value="{{$sanpham->Product_Price}}">									    
								  	</div>
								</div>
								<!-- Text input-->
								<div class="form-group">
								  	<label class="col-md-2 control-label" for="ProductDerc">
								  		Mô tả ngắn
								  	</label>  
								  	<div class="col-md-10">
								  		<textarea name="productderc" id="editor1" rows="10" cols="80">{{$sanpham->Product_Derc}}</textarea>
								  	</div>
								</div>
								<div class="form-group">
								  	<label class="col-md-2 control-label" for="ProductDetail">
								  		Mô tả chi tiết
								  	</label>  
								  	<div class="col-md-10">								  	
								  		<textarea name="productdetail" id="editor1" rows="10" cols="80">{{$sanpham->Product_Detail}}</textarea>
								  	</div>
								</div>
								<!-- Text input-->
								<!-- Select Basic -->
								<div class="form-group">
									<label class="col-md-2 control-label" for="ProductCate">
										Danh mục sản phẩm
									</label>
								  	<div class="col-md-10">
									    <select id="ProductCate" name="ProductCate" class="form-control">
									    	<option value="0">--Chọn danh mục sản phẩm--</option>
									    	@foreach($danhmucsanpham as $dmsp)
									      		<option 
									      			@if($sanpham->Product_Cate == $dmsp->id) 
									      				{{"selected"}}
									      			@endif
									      			value="{{$dmsp->id}}">{{$dmsp->CategoryName}}</option>
									      	@endforeach
									    </select>
								  	</div>
								</div>
								<!-- Select Basic -->
								<div class="form-group">
									<label class="col-md-2 control-label" for="ProductSubCate">
										Danh mục con
									</label>
								  	<div class="col-md-10">
									    <select id="ProductSubCate" name="ProductSubCate" class="form-control">
									    	<option value="0">--Chọn danh mục con--</option>
									      	@foreach($danhmuccon as $dmc)
									      		<option @if($sanpham->Product_SubCate == $dmc->id) 
									      				{{"selected"}}
									      			@endif value="{{$dmc->id}}">{{$dmc->sub_name}}</option>
									      	@endforeach
									    </select>
								  	</div>
								</div>
								<img src="asset/products/{{$sanpham->Product_Img}}"/>
								<div class="form-group">
								  	<label class="col-md-2 control-label" for="ProductImg">
								  		Hình ảnh sản phẩm
								  	</label>								  	
								  	<div class="col-md-10">								  	
								  		<input type="file" id="Product_Img" name="ProductImg" class="form-control input-md" value="{{$sanpham->Product_Img}}">
								  	</div>
								</div>
								<div class="form-group">
									<label class="col-md-2 control-label" for="MaxLoanAmount">
								  	</label> 
									<div class="col-md-10" >
									  	<button type="submit" class="btn btn-success">Thêm sản phẩm</button>
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