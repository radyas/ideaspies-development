<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePostsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('posts', function (Blueprint $table) {
            $table->increments('id');
            $table->enum('type',['video','image','url','content']);
            $table->text('content')->nullable();
            $table->text('img_path')->nullable();
            $table->text('video_path')->nullable();
            $table->text('url')->nullable();
            $table->integer('category_id');
            $table->integer('added_by_id');
            $table->enum('added_by_type', ['admin', 'user']);
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
        Schema::drop('posts');
    }
}
