<?php

namespace App\Models;



use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Config;
use App\Models\Vehicle;
use DB;
use Log;

class VehicleDataTransfer extends Model
{
    use HasFactory, SoftDeletes;
    public $guarded=[];

    // protected $connection = 'mysql2';

    public function transferData()
    {        
       $this->connectAutoDb();
        // "select * from a2_vehicle where NkWebsiteDisplay = 0 and PictureStorage = true and ChassisNo is not null order by Id"; 
        $vehicles = DB::table('a2_vehicle')
            ->where('NkWebsiteDisplay', 0)
            ->whereNotNull('ChassisNo')
            ->orderBy('Id')
            ->get();
            // foreach($vehicles as $data) {
            //     $arr = [];
            //     foreach($data as $k => $v) {
            //         $arr[$k] = $v; 
            //     }   
            //     // var_dump($arr);exit;
            //     self::insert($arr);   
            // }
            
            $this->connectFutureDb();
           $inserted = Vehicle::insertData($vehicles);
          return $inserted;
    }

    public function connectAutoDb()
    {
        Config::set("database.connections.mysql.host", "204.93.178.108");
        Config::set("database.connections.mysql.database", "a2db_future");
        Config::set("database.connections.mysql.username", "futureuser");
        Config::set("database.connections.mysql.password", "future0967");
        DB::purge('mysql');
    }

    public function connectFutureDb()
    {
        Config::set("database.connections.mysql.host", "127.0.0.1");
        Config::set("database.connections.mysql.database", "future_db");
        Config::set("database.connections.mysql.username", "root");
        Config::set("database.connections.mysql.password", "");
        DB::purge('mysql');
    }
}
