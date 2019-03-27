<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddForeignsToVisits extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('visits', function (Blueprint $table) {
            $table->bigInteger('doctor_id')->unsigned()->change();
            $table->bigInteger('patient_id')->unsigned()->change();
            $table->foreign('doctor_id', 'visits_doctor')->references('id')->on('users');
            $table->foreign('patient_id', 'visit_patient')->references('id')->on('users');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('visits', function (Blueprint $table) {
            $table->dropForeign('visit_user_id_foreign');
            $table->dropForeign('visit_user_id_foreign');
        });
    }
}
