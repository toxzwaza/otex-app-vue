<?php

namespace App\Http\Controllers;

use App\Models\OtexQuestion;
use App\Models\School;
use Illuminate\Http\Request;
use Inertia\Inertia;

class MainController extends Controller
{
    //
    public function index(){
        $schools = School::where('isCompany', 0)->orderby('id','asc')->get();
        $companies = School::where('isCompany', 1)->orderby('id','asc')->get();

        return Inertia::render('Index', ['schools' => $schools , 'companies' => $companies]);
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
        // dd($Answer4);

        if($Answer4){
            dd('実行');

            $text = "";
            foreach($Answer4 as $ans4){
                $text .= $ans4 . ',';
            }
            $Answer4 = rtrim($text, ',');
        }else{
            $Answer4 = "";
        }

        
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
        $answers = OtexQuestion::select('otex_questions.*','schools.name')->join('schools','schools.id','otex_questions.school')->orderby('created_at','desc')->get();

        return Inertia::render('Signage', ['answers' => $answers]);
    }
    public function signage_analysis(){

        return Inertia::render('Analysis');
        
    }

    public function getAnswers(){
        $answers = OtexQuestion::select('otex_questions.*','schools.name')->join('schools','schools.id','otex_questions.school')->orderby('created_at','desc')->get();

        return $answers;
    }
}
