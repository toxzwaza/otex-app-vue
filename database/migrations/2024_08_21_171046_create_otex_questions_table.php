<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('otex_questions', function (Blueprint $table) {
            $table->id();
            $table->string('nickName')->nullable();
            $table->unsignedTinyInteger('gender')->nullable();
            $table->unsignedTinyInteger('school')->nullable();
            $table->unsignedTinyInteger('grade')->nullable();
            $table->unsignedTinyInteger('ans1')->nullable();
            $table->unsignedTinyInteger('ans2')->nullable();
            $table->unsignedTinyInteger('ans3')->nullable();
            $table->unsignedTinyInteger('ans4')->nullable();
            $table->text('ans5')->nullable();

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('otex_questions');
    }
};
