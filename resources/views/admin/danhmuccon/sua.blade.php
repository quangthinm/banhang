@extends('admin.layout.index')
@section('content')
<div id="page-wrapper" >
	<div class="header"> 
		<h1 class="page-header">
		    Sửa <small>Danh mục con</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="admin/trang-chu">Trang chủ</a></li>
			<li><a href="{{route('danhsachdanhmuccon')}}">Danh mục con</a></li>
			<li class="active">Sửa</li>
		</ol>			
	</div>

	<div id="page-inner">       
	    <div class="row">
	        <div class="col-md-12">
	            <!-- Advanced Tables -->
	            <div class="panel panel-default">
	                <div class="panel-heading">
	                    Sửa {{$danhmuccon->sub_name}}
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
	                    	<form class="form-horizontal" action="admin/danhmuccon/sua/{{$danhmuccon->id}}" method="post">
	                    	<input type="hidden" name="_token" value="{{csrf_token()}}">
								<div class="form-group">
								  	<label class="col-md-4 control-label" for="SubCategoryName">
								  		Sub Category Name
								  	</label>  
								  	<div class="col-md-5">
								  		<input id="SubCategoryName" name="SubCategoryName" type="text" placeholder="Category Name" class="form-control input-md" value="{{$danhmuccon->sub_name}}"/>
								  	</div>
								</div>
								<div class="form-group">
									<label class="col-md-4 control-label" for="selectbasic">
										Categoty Name
									</label>
								  	<div class="col-md-5">
									    <select id="selectbasic" name="CategoryID" class="form-control">
									    	<option value="{{$danhmuccon->CategoryId}}">--Chọn một danh mục sản phẩm--</option>
									    	@foreach($danhmuc as $dl)
									      		<option value="{{$dl->id}}">{{$dl->CategoryName}}</option>
									      	@endforeach
									    </select>
								  	</div>
								</div>
								<!-- Text input-->
								<div class="form-group">
								  	<label class="col-md-4 control-label" for="SubCategorySlug">
								  		Sub Category Slug
								  	</label>  
								  	<div class="col-md-5">
								  		<input id="SubCategorySlug" name="SubCategorySlug" type="text" placeholder="Category Slug" class="form-control input-md" value="{{$danhmuccon->sub_slug}}"/>
								  	</div>
								</div>
								<!-- Text input-->
								<div class="form-group">
									<label class="col-md-4 control-label" for="MaxLoanAmount">
								  	</label> 
									<div class="col-md-5" >
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