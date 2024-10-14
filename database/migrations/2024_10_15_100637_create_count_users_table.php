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
        Schema::create('count_users', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_attribute_id');
            $table->timestamps();

            $table->foreign('user_attribute_id')->references('id')->on('user_attributes')->onDelete('cascade');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('count_users');
    }
};
