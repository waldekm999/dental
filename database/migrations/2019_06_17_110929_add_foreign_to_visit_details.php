<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddForeignToVisitDetails extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('visit_details', function (Blueprint $table) {
            $table->integer('visit_id')->unsigned()->change();
            $table->foreign('visit_id', 'visits_details')->references('id')->on('visits')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('visit_details', function (Blueprint $table) {
            //
        });
    }
}
