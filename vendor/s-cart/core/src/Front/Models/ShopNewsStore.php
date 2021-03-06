<?php
#S-Cart/Core/Front/Models/ShopNewsStore.php
namespace SCart\Core\Front\Models;

use Illuminate\Database\Eloquent\Model;

class ShopNewsStore extends Model
{
    use \SCart\Core\Front\Models\ModelTrait;
    
    protected $primaryKey = ['store_id', 'news_id'];
    public $incrementing  = false;
    protected $guarded    = [];
    public $timestamps    = false;
    public $table = SC_DB_PREFIX.'shop_news_store';
    protected $connection = SC_CONNECTION;
}
