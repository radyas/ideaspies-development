<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * ShippingMethod Model Class
 *
 *
 * @category   Models
 * @package    Model
 * @author     Insaf Zakariya <insaf.zak@gmail.com>
 * @copyright  Copyright (c) 2015, Insaf Zakariya
 * @version    v1.0.0
 */
class ShippingMethod extends Model{
	use SoftDeletes;

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'sa_shipping_method';

	/**
	 * The attributes that are mass assignable.
	 *
	 * @var array
	 */
	
	protected $fillable = ['name','description'];

	


	

}
