<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddColumnToBlogTableAndInTheNewsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('sa_blog', function (Blueprint $table) {
            $table->text('front_image')->comment('main page of this image will be save as thum_imagename.png');
        });

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
      Schema::table('sa_blog', function (Blueprint $table) {
          $table->dropColumn('front_image');
      });

    }
}
