<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * LastShipping Model Class
 *
 *
 * @category   Models
 * @package    Model
 * @author     Insaf Zakariya <insaf.zak@gmail.com>
 * @copyright  Copyright (c) 2015, Insaf Zakariya
 * @version    v1.0.0
 */
class LastShipping extends Model{
	use SoftDeletes;

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'sa_last_shipping';

	/**
	 * The attributes that are mass assignable.
	 *
	 * @var array
	 */
	
	protected $fillable = ['country_id','city','province','postcode','street_addresss_1','street_addresss_2','first_name','last_name','phone','email','shipping_method','created_by'];

	public function getShippingMethod()
	{
		return $this->belongsTo('App\Models\ShippingMethod', 'shipping_method', 'id');
	}

	public function getCountry()
	{
		return $this->belongsTo('CountryManager\Models\Country', 'country_id', 'id');
	}
	


	

}
