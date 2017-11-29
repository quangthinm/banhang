<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\kienthuc;

class kienthucController extends Controller
{
    public function getDanhsach()
    {
        $kienthuc = kienthuc::orderBy('id', "DERC")->get();
    	return view('admin.kienthuc.danhsach', compact('kienthuc'));
    }
    public function getThem()
    {
    	return view('admin.kienthuc.them');
    }
    public function postThem(Request $Request)
    {
        $this -> validate($Request,
            [
                'newstitle' => 'required|unique:news,news_title|min:3',
                'newsslug' => 'required',
                'newsimg'=>'required',
            ],
            [
                'newstitle.required'=>'Chưa nhập tên',
                'newstitle.min'=>'Tên phải nhiều hơn 3 kí tự',
                'newstitle.unique'=>'Tên đã tồn tại',
                'newsslug.required'=>'Chưa nhập tên không dấu',
                'newsimg.required'=>'Chưa upload hình',
            ]
        );

        $kienthuc = new kienthuc;
        $kienthuc->news_title = $Request->newstitle;
        $kienthuc->slug = $Request->newsslug;
        $kienthuc->news_derc = $Request->productderc;
        $kienthuc->news_detail = $Request->productdetail;

        //upload hình
        if($Request->hasFile('newsimg'))
        {
            $file = $Request->file('newsimg');
            $duoi = $file->getClientOriginalExtension();
            if($duoi != 'jpg' && $duoi != 'png' && $duoi != 'jpeg')
            {
                return redirect('admin/kienthuc/them')->with('thongbao', 'không đúng định dạng ảnh');
            }
            $name = $file->getClientOriginalName();
            $hinh = str_random(6)."-".$name;
            while(file_exists('asset/news/'.$hinh))
            {
                $hinh = str_random(6)."-".$name;
            }
            $file->move('asset/news',$hinh);
            $kienthuc->news_img = $hinh;
        }else
        {
            $kienthuc->news_img = "";
        }

        $kienthuc->save();
        return redirect('admin/kienthuc/them')->with('thongbao', 'Thêm thành công');
    }
    public function getSua($id)
    {
        $kienthuc = kienthuc::find($id);
        return view('admin.kienthuc.sua', compact('kienthuc'));
    }
    public function postSua(Request $Request, $id)
    {

        $kienthuc = kienthuc::find($id);
        $kienthuc->news_title = $Request->newstitle;
        $kienthuc->slug = $Request->newsslug;
        $kienthuc->news_derc = $Request->productderc;
        $kienthuc->news_detail = $Request->productdetail;

        //upload hình
        if($Request->hasFile('newsimg'))
        {
            $file = $Request->file('newsimg');
            $duoi = $file->getClientOriginalExtension();
            if($duoi != 'jpg' && $duoi != 'png' && $duoi != 'jpeg')
            {
                return redirect('admin/kienthuc/them')->with('thongbao', 'không đúng định dạng ảnh');
            }
            $name = $file->getClientOriginalName();
            $hinh = str_random(6)."-".$name;
            while(file_exists('asset/news/'.$hinh))
            {
                $hinh = str_random(6)."-".$name;
            }
            $file->move('asset/news',$hinh);
            $kienthuc->news_img = $hinh;
        }else
        {
            $kienthuc->news_img = $kienthuc->news_img;
        }

        $kienthuc->save();
        return redirect('admin/kienthuc/sua/'.$id)->with('thongbao', 'Đã sửa thành công');
    }
    public function getXoa($id){
        $kienthuc = kienthuc::find($id);
        $kienthuc -> delete($id);
        return redirect('admin/kienthuc/danh-sach')->with('thongbao','Đã xóa sản phẩm '.$kienthuc->news_title);
    }
}
