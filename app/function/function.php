<?php
//mở composer.json
//thêm vào trong autoload chuỗi 
// "files": [
//		"app/function/function.php"
//	]

//Chạy CMD : composer dumpautoload
function changeTitle($str,$strSymbol='-',$case=MB_CASE_LOWER){
	$str = trim($str);
	if($str = "") return "";
	$str = str_replace('"','',$str);
	$str = mb_convert_case($str,$case,'utf-8');
	$str = str_replace("'",'',$str);
	$str = stripUnicode($str);
	$str = preg_replace('/[\W|_]+/',$strSymbol,$str);
	return $str;
}

function stripUnicode($str){
	if(!$str) return '';

	$unicode = array(
		'a' => 'á|à|ả|ạ|ã|ă|ắ|ằ|ẳ|ẵ|ặ|â|ấ|ầ|ẩ|ẫ|ậ',
		'e' => 'è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ',
		'i' => 'ì|í|ị|ỉ|ĩ',
		'o' => 'ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ',
		'u' => 'ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ',
		'y' => 'ỳ|ý|ỵ|ỷ|ỹ',
		'd' => 'đ',
	);
	foreach ($unicode as $khongdau => $codau) {
		$arr=explode(""|"",$codau);
		$str = str_replace($arr,$khongdau,$str);
	}
	return $str;
}