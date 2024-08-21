<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OtexQuestion extends Model
{
    use HasFactory;

    protected $fillable = [
        'nickName',
        'gender',
        'school',
        'grade',
        'ans1',
        'ans2',
        'ans3',
        'ans4',
        'ans5',
    ];
}
