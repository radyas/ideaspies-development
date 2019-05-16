<?php
namespace SettingManage\Models;

use Illuminate\Database\Eloquent\Model;

class Setting extends Model{


	/**
	 * The attributes that are mass assignable.
	 *
	 * @var array
	 */
	protected $fillable = ['fb', 'twitter','address' , 'contact_num', 'admin_email'];

}
