<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\sanpham;
use App\danhmucsanpham;
use App\danhmuccon; 

class sanphamController extends Controller
{
     public function getDanhsach()
    {
    	$danhsachsanpham = sanpham::orderBy('id', 'DESC')->get();
    	return view('admin/sanpham/danhsach', compact('danhsachsanpham'));
    }
    public function getThem()
    {
    	$danhmuccon = danhmuccon::all();
    	$danhmucsanpham = danhmucsanpham::all();
    	return view('admin/sanpham/them', compact('danhmuccon', 'danhmucsanpham'));
    }
    public function postThem(Request $Request)
    {
    	$this -> validate($Request,
    		[
    			'ProductName' => 'required|unique:products,Product_name|min:3',
    			'ProductSlug' => 'required|unique:products,Product_name|min:3',
    			'ProductPrice'=>'required',
   		 		'ProductImg'=>'required',
    		],
    		[
    			'ProductName.required'=>'Chưa nhập tên sản phẩm',
    			'ProductName.min'=>'Tên sản phẩm phải nhiều hơn 3 kí tự',
    			'ProductName.unique'=>'Tên sản phẩm đã tồn tại',
    			'ProductSlug.required'=>'Chưa nhập tên không dấu',
    			'ProductPrice.required'=>'Chưa nhập giá',
    			'ProductImg.required'=>'Chưa upload hình sản phẩm',
    		]
		);

    	$sanpham = new sanpham;
    	$sanpham->Product_name = $Request->ProductName;
    	$sanpham->Slug = $Request->ProductSlug;
    	$sanpham->Product_Price = $Request->ProductPrice;
    	$sanpham->Product_Derc = $Request->productderc;
    	$sanpham->Product_Detail = $Request->productdetail;

    	//upload hình
    	if($Request->hasFile('ProductImg'))
    	{
    		$file = $Request->file('ProductImg');
    		$duoi = $file->getClientOriginalExtension();
    		if($duoi != 'jpg' && $duoi != 'png' && $duoi != 'jpeg')
    		{
    			return redirect('admin/sanpham/them')->with('thongbao', 'không đúng định dạng ảnh');
    		}
    		$name = $file->getClientOriginalName();
    		$hinh = str_random(6)."-".$name;
    		while(file_exists('asset/products/'.$hinh))
    		{
    			$hinh = str_random(6)."-".$name;
    		}
    		$file->move('asset/products',$hinh);
    		$sanpham->Product_Img = $hinh;
    	}else
    	{
    		$sanpham->Product_Img = "";
    	}

    	$sanpham->Product_Cate = $Request->ProductCate;
    	$sanpham->Product_SubCate = $Request->ProductSubCate;
    	$sanpham->save();
    	return redirect('admin/sanpham/them')->with('thongbao', 'Thêm thành công');
    }

    public function getSua($id){

    	$danhmuccon = danhmuccon::all();
    	$danhmucsanpham = danhmucsanpham::all();
    	$sanpham = sanpham::find($id);
    	return view('admin.sanpham.sua', compact('danhmuccon','danhmucsanpham','sanpham'));
    }

    public function postSua(Request $Request, $id)
    {
    	$sanpham = sanpham::find($id);
    	$sanpham->Product_name = $Request->ProductName;
    	$sanpham->Slug = $Request->ProductSlug;
    	$sanpham->Product_Price = $Request->ProductPrice;
    	$sanpham->Product_Derc = $Request->productderc;
    	$sanpham->Product_Detail = $Request->productdetail;

    	//upload hình
    	if($Request->hasFile('ProductImg'))
    	{
    		$file = $Request->file('ProductImg');
    		$duoi = $file->getClientOriginalExtension();
    		if($duoi != 'jpg' && $duoi != 'png' && $duoi != 'jpeg')
    		{
    			return redirect('admin/sanpham/them')->with('thongbao', 'không đúng định dạng ảnh');
    		}
    		$name = $file->getClientOriginalName();
    		$hinh = str_random(6)."-".$name;
    		while(file_exists('asset/products/'.$hinh))
    		{
    			$hinh = str_random(6)."-".$name;
    		}
    		$file->move('asset/products',$hinh);
    		$sanpham->Product_Img = $hinh;
    	}else
    	{
    		echo $sanpham->Product_Img = $sanpham->Product_Img;
    	}

    	$sanpham->Product_Cate = $Request->ProductCate;
    	$sanpham->Product_SubCate = $Request->ProductSubCate;
    	$sanpham->save();
    	return redirect('admin/sanpham/sua/'.$id)->with('thongbao', 'Thêm thành công');
    }

    public function getXoa($id){
    	$sanpham = sanpham::find($id);
    	$sanpham -> delete($id);
    	return redirect('admin/sanpham/danh-sach')->with('thongbao','Đã xóa sản phẩm '.$sanpham->Product_name);
    }
}
