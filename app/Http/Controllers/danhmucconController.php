<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\danhmuccon;
use App\danhmucsanpham;

class danhmucconController extends Controller
{
    public function getDanhsach()
    {
    	$danhmuccon = danhmuccon::all();
    	return view("admin/danhmuccon/danhsach", compact('danhmuccon'));
    }
    public function getThem()
    {
    	$danhmuc = danhmucsanpham::all();
    	return view('admin/danhmuccon/them', compact('danhmuc'));
    }
    public function postThem(Request $Request)
    {
    	$this -> validate($Request,
    		[
    			'SubCategoryName' => 'required|unique:productsubcategories,sub_name|min:3',
    			'SubCategorySlug' => 'required|unique:productsubcategories,sub_slug|min:3',

    		],
    		[
    			'SubCategoryName.required' => 'Bạn chưa nhập tên danh mục con',
    			'SubCategoryName.unique' => 'Danh mục đã tồn tại',
    			'SubCategoryName.min' => 'Tên danh mục phải dài hơn 3 ký tự',
    			'SubCategorySlug.required' => 'Bạn chưa nhập tên không dấu',
    			'SubCategorySlug.unique' => 'Tên không dấu đã tồn tại',
    			'SubCategorySlug.min' => 'Tên không dấu phải dài hơn 3 ký tự',
    		]
    		);
    	$danhmuccon = new danhmuccon;
    	$danhmuccon->sub_name  = $Request->SubCategoryName;
    	$danhmuccon->CategoryId = $Request->CategoryID;
    	$danhmuccon->sub_slug = $Request->SubCategorySlug;
    	$danhmuccon->save();
    	return redirect('admin/danhmuccon/them')->with('thongbao', 'Thêm thành công');
    }
    public function getSua($id)
    {
    	$danhmuc = danhmucsanpham::all();
    	$danhmuccon = danhmuccon::find($id);
    	return view('admin.danhmuccon.sua', compact('danhmuccon', 'danhmuc'));
    }
    public function postSua(Request $Request, $id)
    {
    	$danhmuccon = danhmuccon::find($id);
    	$this -> validate($Request,
    		[
    			'SubCategoryName' => 'required|min:3',
    			'SubCategorySlug' => 'required|min:3',

    		],
    		[
    			'CategoryName.required' => 'Bạn chưa nhập tên danh mục sản phẩm',
    			'CategoryName.min' => 'Tên danh mục sản phẩm phải dài hơn 3 ký tự',
    			'CategorySlug.required' => 'Bạn chưa nhập tên không dấu',
    			'CategorySlug.min' => 'Tên không dấu phải dài hơn 3 ký tự',
    		]
		);
		$danhmuccon->sub_name = $Request->SubCategoryName;
		$danhmuccon->CategoryId = $Request->CategoryID;
		$danhmuccon->sub_slug = $Request->SubCategorySlug;
		$danhmuccon->save();
		return redirect('admin/danhmuccon/sua/'.$id)->with('thongbao', 'Sửa thành công');
    }
    public function getXoa($id)
    {
    	$danhmuc = danhmuccon::find($id);
    	$danhmuc -> delete($id);
    	return redirect('admin/danhmuccon/danh-sach');
    }
}
