<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
use App\sanpham;
use App\danhmuccon;
use App\kienthuc;

Route::get('/', function () {
    return view('welcome');
});

Route::get('trang-chu', function () {
	$sanpham = sanpham::limit(8)->get();
	$kienthuc = kienthuc::limit(3)->orderBy('id', 'DESC')->get();
    return view('page.trangchu', compact('sanpham', 'kienthuc'));
});

Route::get('thuc-pham-chuc-nang', function () {
	$sanpham = sanpham::where('Product_Cate', '1')->get();
	$danhmuccon = danhmuccon::where('CategoryId','1')->get();
    return view('page.sanpham', compact('sanpham', 'danhmuccon'));
});

Route::get('mi-pham', function () {
	$sanpham = sanpham::where('Product_Cate', '2')->get();
	$danhmuccon = danhmuccon::where('CategoryId','2')->get();
    return view('page.sanpham', compact('sanpham', 'danhmuccon'));
});

Route::get('dinh-duong-quy', function () {
	$sanpham = sanpham::where('Product_Cate', '3')->get();
	$danhmuccon = danhmuccon::where('CategoryId','3')->get();
    return view('page.sanpham', compact('sanpham', 'danhmuccon'));
});

Route::get('kien-thuc', function () {
	$kienthuc = kienthuc::orderBy('id', 'DESC')->paginate(9);
    return view('page.kienthuc', compact('kienthuc'));
});

Route::get('kien-thuc/{id}/{slug}', 'pageController@getChitiet')->name('chitietkienthuc');


Route::get('gioi-thieu', function () {
    return view('page.gioithieu');
});

Route::get('lien-he', function () {
    return view('page.lienhe');
});

//admin routes
Route::group(['prefix'=>'admin'],function(){
	Route::get('trang-chu', function () {
	    return view('admin.trangchu');
	});

	Route::group(['prefix'=>'thucphamchucnang'],function(){
		//admin/thucphamchucnang/danh-sach
		Route::get('danh-sach','thucphamchucnangController@getDanhsach')->name('danhsachthucphamchucnang');

		Route::get('them','thucphamchucnangController@getThem')->name('themthucphamchucnang');

		Route::get('sua','thucphamchucnangController@getSua')->name('suathucphamchucnang');;
	});

	Route::group(['prefix'=>'mipham'],function(){
		//admin/thucphamchucnang/danh-sach
		Route::get('danh-sach','miphamController@getDanhsach')->name('danhsachmipham');

		Route::get('them','miphamController@getThem')->name('themmipham');

		Route::get('sua','miphamController@getSua')->name('suamipham');;
	});

	Route::group(['prefix'=>'dinhduongquy'],function(){
		//admin/thucphamchucnang/danh-sach
		Route::get('danh-sach','dinhduongquyController@getDanhsach')->name('danhsachdinhduongquy');

		Route::get('them','dinhduongquyController@getThem')->name('themdinhduongquy');

		Route::get('sua','dinhduongquyController@getSua')->name('suadinhduongquy');;
	});

	Route::group(['prefix'=>'kienthuc'],function(){
		//admin/thucphamchucnang/danh-sach
		Route::get('danh-sach','kienthucController@getDanhsach')->name('danhsachkienthuc');

		Route::get('them','kienthucController@getThem')->name('themkienthuc');

		Route::get('sua','kienthucController@getSua')->name('suakienthuc');;
	});

	Route::group(['prefix'=>'danhmucsanpham'],function(){
		//admin/thucphamchucnang/danh-sach
		Route::get('danh-sach','danhmucsanphamController@getDanhsach')->name('danhsachdanhmucsanpham');

		Route::get('them','danhmucsanphamController@getThem')->name('themdanhmucsanpham');
		Route::post('them','danhmucsanphamController@postThem');

		Route::get('sua/{id}','danhmucsanphamController@getSua');
		Route::post('sua/{id}','danhmucsanphamController@postSua');

		Route::get('xoa/{id}','danhmucsanphamController@getXoa');
	});

	Route::group(['prefix'=>'danhmuccon'],function(){
		Route::get('danh-sach','danhmucconController@getDanhsach')->name('danhsachdanhmuccon');

		Route::get('them','danhmucconController@getThem')->name('themdanhmuccon');
		Route::post('them','danhmucconController@postThem');

		Route::get('sua/{id}','danhmucconController@getSua');
		Route::post('sua/{id}','danhmucconController@postSua');

		Route::get('xoa/{id}','danhmucconController@getXoa');
	});

	Route::group(['prefix'=>'sanpham'],function(){
		Route::get('danh-sach','sanphamController@getDanhsach')->name('danhsachsanpham');

		Route::get('them','sanphamController@getThem')->name('themsanpham');
		Route::post('them','sanphamController@postThem');

		Route::get('sua/{id}','sanphamController@getSua');
		Route::post('sua/{id}','sanphamController@postSua');

		Route::get('xoa/{id}','sanphamController@getXoa');
	});

	Route::group(['prefix'=>'kienthuc'],function(){
		Route::get('danh-sach','kienthucController@getDanhsach')->name('danhsachkienthuc');

		Route::get('them','kienthucController@getThem')->name('themkienthuc');
		Route::post('them','kienthucController@postThem');

		Route::get('sua/{id}','kienthucController@getSua');
		Route::post('sua/{id}','kienthucController@postSua');

		Route::get('xoa/{id}','kienthucController@getXoa');
	});
});