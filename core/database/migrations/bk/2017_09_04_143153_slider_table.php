<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class SliderTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {

        Schema::create('animation_type', function($table)
        {
            $table->integer('animation_type_id',true);
            $table->string('type')->nullable();
            $table->string('description')->nullable();
            $table->integer('status')->default(1);
            $table->timestamps();

            $table->engine = 'InnoDB';
        });

        Schema::create('slides', function($table)
        {
            $table->increments('slides_id');
            $table->integer('animation_type');
            $table->string('image')->nullable();
            $table->string('animation_txt')->nullable();
            $table->string('btn_txt')->nullable();
            $table->string('btn_url')->nullable();
            $table->string('btn_clr')->nullable();
            $table->integer('status')->default(1);
            $table->timestamps();

            $table->foreign('animation_type')
                ->references('animation_type_id')->on('animation_type')
                ->onDelete('cascade');
            $table->engine = 'InnoDB';
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('animation_type');
        Schema::drop('slides');
    }
}
