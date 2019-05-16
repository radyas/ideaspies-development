<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * PaypalTransaction	 Model Class
 *
 *
 * @category   Models
 * @package    Model
 * @author     Insaf Zakariya <insaf.zak@gmail.com>
 * @copyright  Copyright (c) 2015, Insaf Zakariya
 * @version    v1.0.0
 */
class PaypalTransaction extends Model{
	use SoftDeletes;

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'sa_paypal_transaction';

	/**
	 * The attributes that are mass assignable.
	 *
	 * @var array
	 */
	
	protected $fillable = ['TOKEN','TIMESTAMP','EMAIL','PAYERID','FIRSTNAME','LASTNAME','COUNTRYCODE','CURRENCYCODE','AMT','DESCRIPTION','INVNUM','PAYMENTREQUESTINFO_0_ERRORCODE','SHIPPINGAMT','TAXAMT','CORRELATIONID','ACK','VERSION','PAYMENTINFO_0_TRANSACTIONID','PAYMENTINFO_0_PAYMENTSTATUS','PAYMENTINFO_0_SECUREMERCHANTACCOUNTID'];

	


	

}
