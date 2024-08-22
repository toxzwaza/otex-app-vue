<?php

namespace App\Http\Controllers;

use App\Models\OtexQuestion;
use Illuminate\Http\Request;
use Inertia\Inertia;

class MainController extends Controller
{
    //
    public function index(){
        return Inertia::render('Index');
    }
    public function store(Request $request){
        $NickName = $request->NickName;
        $Gender = $request->Gender;
        $School = $request->School;
        $Grade = $request->Grade;
        $Answer1 = $request->Answer1;
        $Answer2 = $request->Answer2;
        $Answer3 = $request->Answer3;
        $Answer4 = $request->Answer4;
        $Answer5 = $request->Answer5;
        // dd($Answer1);
        
        OtexQuestion::create([
            'nickName' => $NickName,
            'gender' => $Gender,
            'school' => $School,
            'grade' => $Grade,
            'ans1' => $Answer1,
            'ans2' => $Answer2,
            'ans3' => $Answer3,
            'ans4' => $Answer4,
            'ans5' => $Answer5
        ]);

        return Inertia::render('Complete');


    }

    public function signage(){
        $answers = OtexQuestion::orderby('created_at','desc')->get();

        return Inertia::render('Signage', ['answers' => $answers]);
    }
}
