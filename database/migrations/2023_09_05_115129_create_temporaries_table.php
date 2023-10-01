<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTemporariesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('temporaries', function (Blueprint $table) {
            $table->id();
            $table->integer('sender_id')->nullable();
            $table->integer('receiver_id')->nullable();
            $table->string('token')->nullable();
            $table->string('stat')->default(0)->comment('0 for notused , 1 for used ');
            $table->string('amount')->nullable();
            $table->string('general')->nullable();
            $table->string('timestamp')->nullable();
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
        Schema::dropIfExists('temporaries');
    }
}
