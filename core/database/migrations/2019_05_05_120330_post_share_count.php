<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class PostShareCount extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('share_count', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('post_id');
            $table->integer('type')->comment="1-fb, 2-twitter, 3-linkedin, 4-email";
            $table->integer('value');
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
        Schema::drop('share_count');
    }
}
