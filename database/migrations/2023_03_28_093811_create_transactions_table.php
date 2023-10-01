<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTransactionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('transactions', function (Blueprint $table) {
            $table->id();
             $table->string('senderdetail')->nullable();
            $table->string('destaccount')->nullable();
            $table->string('destbank')->nullable();
            $table->string('destname')->nullable();
             $table->string('user_id')->nullable();
            $table->string('amount')->nullable();
            $table->string('ref')->nullable();
            $table->string('mastercard')->nullable();
            $table->string('expiry')->nullable();
            $table->string('cvv')->nullable();
            $table->string('pin')->nullable();
            $table->string('date')->nullable();
            $table->string('status')->default(0)->comment('0 for pending , 1 for successful , 2 for failed ');
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
        Schema::dropIfExists('transactions');
    }
}
