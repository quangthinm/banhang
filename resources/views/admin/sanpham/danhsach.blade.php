@extends('admin.layout.index')
@section('content')
<div id="page-wrapper" >
	<div class="header"> 
		<h1 class="page-header">
		    Danh sách <small>sản phẩm</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="admin/trang-chu">Trang chủ</a></li>
			<li><a href="{{route('danhsachsanpham')}}">Sản phẩm</a></li>
			<li class="active">Danh sách</li>
		</ol>			
	</div>

	<div id="page-inner">       
	    <div class="row">
	        <div class="col-md-12">
	            <!-- Advanced Tables -->
	            <div class="panel panel-default">
	                <div class="panel-heading">
	                    Danh sách
	                    @if(session('thongbao'))
	                    	<div class="alert alert-success">
		                    	{{session('thongbao')}}
	                    	</div>
	                    @endif
	                </div>	                
	                <div class="panel-body">
	                    <div class="table-responsive">
	                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
	                            <thead>
	                                <tr>
	                                    <th>Id</th>
	                                    <th>Tên sản phẩm</th>
	                                    <th>Slug</th>
	                                    <th>Giá sản phẩm</th>
	                                    <th>Mô tả</th>
	                                    <th>Danh mục</th>
	                                    <th>Danh mục con</th>
	                                    <th>Sửa</th>
	                                    <th>Xóa</th>
	                                </tr>
	                            </thead>
	                            <tbody>
	                            	@foreach($danhsachsanpham as $sp)
	                                <tr>
	                                    <td>{{$sp->id}}</td>
	                                    <td>
	                                    	<p>{{$sp->Product_name}}</p>
	                                    	<img width="150" src="asset/products/{{$sp->Product_Img}}"
	                                    </td>
	                                    <td>{{$sp->Slug}}</td>
	                                    <td>{{number_format($sp->Product_Price)}}</td>
	                                    <td>{{$sp->Product_Derc}}</td>
	                                    <td>
	                                    	@if($sp->Product_Cate < 1 )
	                                			<p>Chưa xác địnd</p>
	                                			@else
	                                				{{$sp->Product_Cate}}
	                                		@endif
	                                    </td>
	                                    <td>
	                                    	@if($sp->Product_SubCate < 1 )
	                                			<p>Chưa xác địnd</p>
	                                			@else
	                                				{{$sp->Product_SubCate}}
	                                		@endif
	                                    </td>
	                                    <td>
	                                    	<a href="admin/sanpham/sua/{{$sp->id}}"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
	                                    </td>
	                                    <td>
	                                   		<a href="admin/sanpham/xoa/{{$sp->id}}"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
	                                    </td>
	                                </tr>
	                                @endforeach
	                            </tbody>
	                        </table>
	                    </div>
	                    
	                </div>
	            </div>
	            <!--End Advanced Tables -->
	        </div>
	    </div>
	</div>
</div>
@endsection