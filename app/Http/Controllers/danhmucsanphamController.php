<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\danhmucsanpham;

class danhmucsanphamController extends Controller
{
    public function getDanhsach()
    {
    	$danhmucsanpham = danhmucsanpham::all();
    	return view('admin.danhmucsanpham.danhsach', compact('danhmucsanpham'));
    }
    public function getThem()
    {
    	return view('admin.danhmucsanpham.them');
    }
    public function postThem(Request $Request)
    {
    	$this -> validate($Request,
    		[
    			'CategoryName' => 'required|unique:productcategories,CategoryName|min:3',
    			'CategorySlug' => 'required|unique:productcategories,CategorySlug|min:3',

    		],
    		[
    			'CategoryName.required' => 'Bạn chưa nhập tên danh mục sản phẩm',
    			'CategoryName.unique' => 'Danh mục sản phẩm đã tồn tại',
    			'CategoryName.min' => 'Tên danh mục sản phẩm phải dài hơn 3 ký tự',
    			'CategorySlug.required' => 'Bạn chưa nhập tên không dấu',
    			'CategorySlug.unique' => 'Tên không dấu đã tồn tại',
    			'CategorySlug.min' => 'Tên không dấu phải dài hơn 3 ký tự',
    		]
    		);
    	$danhmuc = new danhmucsanpham;
    	$danhmuc->CategoryName  = $Request->CategoryName;
    	$danhmuc->CategorySlug = $Request->CategorySlug;
    	$danhmuc->save();
    	return redirect('admin/danhmucsanpham/them')->with('thongbao', 'Thêm thành công');
    }
    public function getSua($id)
    {
    	$danhmuc = danhmucsanpham::find($id);
    	return view('admin.danhmucsanpham.sua', compact('danhmuc'));
    }
    public function postSua(Request $Request, $id)
    {
    	$danhmuc = danhmucsanpham::find($id);
    	$this -> validate($Request,
    		[
    			'CategoryName' => 'required|unique:productcategories,CategoryName|min:3',
    			'CategorySlug' => 'required|unique:productcategories,CategorySlug|min:3',

    		],
    		[
    			'CategoryName.required' => 'Bạn chưa nhập tên danh mục sản phẩm',
    			'CategoryName.unique' => 'Danh mục sản phẩm đã tồn tại',
    			'CategoryName.min' => 'Tên danh mục sản phẩm phải dài hơn 3 ký tự',
    			'CategorySlug.required' => 'Bạn chưa nhập tên không dấu',
    			'CategorySlug.unique' => 'Tên không dấu đã tồn tại',
    			'CategorySlug.min' => 'Tên không dấu phải dài hơn 3 ký tự',
    		]
		);
		$danhmuc->CategoryName = $Request->CategoryName;
		$danhmuc->CategorySlug = $Request->CategorySlug;
		$danhmuc->save();
		return redirect('admin/danhmucsanpham/sua/'.$id)->with('thongbao', 'Sửa thành công');
    }
    public function getXoa($id)
    {
    	$danhmuc = danhmucsanpham::find($id);
    	$danhmuc -> delete($id);
    	return redirect('admin/danhmucsanpham/danh-sach');
    }
}
