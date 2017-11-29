@extends('admin.layout.index')
@section('content')
<div id="page-wrapper" >
	<div class="header"> 
		<h1 class="page-header">
		    Danh sách <small>Danh mục con</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="admin/trang-chu">Trang chủ</a></li>
			<li><a href="{{route('danhsachdanhmuccon')}}">Danh mục con</a></li>
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
	                </div>
	                <div class="panel-body">
	                    <div class="table-responsive">
	                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
	                            <thead>
	                                <tr>
	                                    <th>ID</th>
	                                    <th>Name</th>
	                                    <th>Category</th>
	                                    <th>Slug</th>
	                                    <th>Edit</th>
	                                    <th>Delete</th>
	                                </tr>
	                            </thead>
	                            <tbody>
	                            	@foreach($danhmuccon as $danhmuc)
	                                <tr class="odd gradeX">
	                                    <td>{{$danhmuc->id}}</td>
	                                    <td>{{$danhmuc->sub_name}}</td>
	                                    <td>{{$danhmuc->CategoryId}}</td>
	                                    <td>{{$danhmuc->sub_slug}}</td>
	                                    <td><a href="admin/danhmuccon/sua/{{$danhmuc->id}}"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a></td>
	                                    <td><a href="admin/danhmuccon/xoa/{{$danhmuc->id}}"><i class="fa fa-trash-o" aria-hidden="true"></i></a></td>
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