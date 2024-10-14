<?php

namespace App\Http\Controllers;

use App\Models\CountUser;
use App\Models\UserAttribute;
use Exception;
use Illuminate\Http\Request;
use Inertia\Inertia;
use PHPUnit\Framework\Constraint\Count;

class CountController extends Controller
{
    //
    public function index()
    {

        return Inertia::render('Count');
    }

    public function getCount()
    {
        $count = CountUser::count();
        $last_created_at = CountUser::select('created_at')->orderby('created_at','desc')->first();

        return response()->json(['count' => $count, 'last_created_at' => $last_created_at->created_at]);
    }

    public function store(Request $request)
    {
        $user_attribute_id = $request->attribute_id;

        $is_success = 'ok';
        $msg = '';

        try {


            $count_users = new CountUser();
            $count_users->user_attribute_id = $user_attribute_id;
            $count_users->save();

            $msg = '正常終了';
        } catch (Exception $e) {
            $is_success = 'fail';
            $msg = $e;
        }


        return response()->json(['status' => $is_success, 'msg' => $msg]);
    }
}
