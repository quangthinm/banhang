<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\danhmucsanpham;
use App\danhmuccon;

class ajaxController extends Controller
{
    public function getDanhmuccon($idProductCate)
    {
    	$subcate = danhmuccon::where('idProductCate', $id);
    	foreach ($subcate as $sc) {
    		echo '<option value="'.$sc->id.'">'.$sc->sub_name.'</option>'
    	}
    }
}
