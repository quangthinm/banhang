@extends('admin.layout.index')
@section('content')
<div id="page-wrapper" >
	<div class="header"> 
		<h1 class="page-header">
		    Danh sách <small>Kiến thức</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="admin/trang-chu">Trang chủ</a></li>
			<li><a href="{{route('danhsachkienthuc')}}">Kiến thức</a></li>
			<li class="active">Danh sách</li>
		</ol>			
	</div>

	<div id="page-inner">       
	    <div class="row">
	        <div class="col-md-12">
	            <!-- Advanced Tables -->
	            <div class="panel panel-default">
	                <div class="panel-heading">
	                    Danh sách kiến thức
	                </div>
	                <div class="panel-body">
	                    <div class="table-responsive">
	                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
	                            <thead>
	                                <tr>
	                                    <th>ID</th>
	                                    <th>Tiêu đề</th>
	                                    <th>Slug</th>
	                                    <th>Mô tả</th>
	                                    <th>Sửa</th>
	                                    <th>Xóa</th>
	                                </tr>
	                            </thead>
	                            <tbody>
	                            @foreach($kienthuc as $kt)
	                                <tr>
	                                    <td>{{$kt->id}}</td>
	                                    <td>{{$kt->news_title}}</td>
	                                    <td>{{$kt->slug}}</td>
	                                    <td>{{$kt->news_derc}}</td>
	                                    <td>
	                                    	<a href="admin/kienthuc/sua/{{$kt->id}}"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
	                                    </td>
	                                    <td>
	                                   		<a href="admin/kienthuc/xoa/{{$kt->id}}"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
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