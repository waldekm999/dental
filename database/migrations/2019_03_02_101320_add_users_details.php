<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddUsersDetails extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {

            $table->string('surname');
            $table->string('pesel')->unique();
            $table->string('phone');
            $table->enum('type', ['patient', 'staff']);
            $table->string('city')->nullable();
            $table->string('post_code')->nullable();
            $table->string('address')->nullable();
            $table->text('description')->nullable();

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('users', function (Blueprint $table) {

            $table->dropColumn('surname');
            $table->dropColumn('pesel')->unique();
            $table->dropColumn('phone');
            $table->dropColumn('type', ['patient', 'staff']);
            $table->dropColumn('city')->nullable();
            $table->dropColumn('post_code')->nullable();
            $table->dropColumn('address')->nullable();
            $table->dropColumn('description')->nullable();
        });
    }
}
