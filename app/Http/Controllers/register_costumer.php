<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

class register_customer extends Controller
{
    //
    public function insertform()
    {
        return view('register');
    }
    public function insert(Request $request)
    {
        $job = $request->input('job');
        $data = array("job" => $job);
        DB::table('sc_shop_customer')->insert($data);
        echo "Record inserted successfully.<br/>";
        echo '<a href = "/insert">Click Here</a> to go back.';
    }
}
