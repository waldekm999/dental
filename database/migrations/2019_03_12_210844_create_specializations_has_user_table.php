<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSpecializationsHasUserTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('specializations_has_user', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('specialization_id')->unsigned();
            $table->bigInteger('user_id')->unsigned();
            $table->timestamps();
        });

        Schema::table('specializations_has_user', function (Blueprint $table) {
           $table->foreign('specialization_id')->references('id')
               ->on('specializations')->onDelete('cascade');
           $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('specializations_has_user');
    }
}
