<?php
#S-Cart/Core/Front/Models/ShopCustomerPasswordReset.php
namespace SCart\Core\Front\Models;

use Illuminate\Database\Eloquent\Model;

class ShopCustomerPasswordReset extends Model
{
    use \SCart\Core\Front\Models\ModelTrait;
    
    protected $primaryKey = ['token'];
    public $incrementing  = false;
    protected $guarded    = [];
    public $timestamps    = false;
    public $table = SC_DB_PREFIX.'shop_password_resets';
    protected $connection = SC_CONNECTION;
}
