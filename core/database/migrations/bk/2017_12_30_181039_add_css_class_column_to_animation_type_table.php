<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;
use SliderManager\Models\AnimationType;

class AddCssClassColumnToAnimationTypeTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('animation_type', function (Blueprint $table) {
            $table->string('css_class');
        });

        AnimationType::find(1)->update(['css_class' => 'FromTop']);
        AnimationType::find(2)->update(['css_class' => 'FromRight']);
        AnimationType::find(3)->update(['css_class' => 'FromBottom']);
        AnimationType::find(4)->update(['css_class' => 'FromRight']);

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('animation_type', function (Blueprint $table) {
              $table->dropColumn('css_class');
        });
    }
}
