<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
// use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Log;

class Vehicle extends Model
{
    // use HasFactory;
    public $guarded=[];

    public function __construct()
    {
        //
    }

    public static function getAll()
    {
        return self::all();
    }

    public static function newArrival()
    {
       return $newArrivalList =  self::select('ChassisNo', 'VehicleName', 'Grade', 'YearModel', 'EngineCapacityInCC')
        ->where('NkWebsiteFlag', '0')->get();
    }

    public static function mostAffordable()
    {
        return $mostAffordableList = self::select('ChassisNo', 'VehicleName', 'Grade', 'YearModel', 'EngineCapacityInCC', 'TargetPrice')
        ->where('TargetPrice', '<=','200000')->get();
    }

    public static function highGraded()
    {
        return $highGradedList = self::select('ChassisNo', 'VehicleName', 'Grade', 'YearModel', 'EngineCapacityInCC', 'TargetPrice')
        ->where('EngineCapacityInCC', '>=','2500')->get();
    }

    public static function stockSearch($param)
    {
        return self::quickSearch($param);
    }
    
    public static function calculate($param = null)
    {
        $cols = null;
        $cols = ['ChassisNo','VehicleName', 'Grade', 'YearModel', 'EngineCapacityInCC', 'TargetPrice', 'Remarks',
            'Grade', 'Model', 'Color', 'Seat', 'Door', 'SunRoof','LeatherSeat', 'PushPrice', 'BuyingAuctionCharge',
            'RecycleCharge', 'ShakenCharge', 'ExhibitAuctionCharge', 'RiksoCharge', 'OtherChargesApplied',
            'RepairCharge', 'InspectionCharge', 'ShippingCharge', 'FreightCharge', 'TargetCountry'];
        return self::quickSearch($param, $cols);
    }

    public static function quickSearch($param = null, $cols = null)
    {   
        if(empty($cols)) {
            $cols = ['ChassisNo','VehicleName', 'Grade', 'YearModel', 'EngineCapacityInCC', 'TargetPrice', 'Remarks'];
        }
        $query = self::query();
        $query->select($cols);
        if(empty($param)) {
            return $query->paginate(25);
        }
        
        $body_type =  $param['TypeOfBody'];
        $maker = $param['Maker'];
        $vehicle_name = $param['VehicleName'];
        $yearFrom = $param['yearModelFrom'];
        $yearTo = $param['yearModelTo'];
        $engine_1 = $param['cc'];
        $country = isset($param['country']) ? $param['country'] : null;

        if (!empty($body_type)) {
            $query->where('TypeOfBody', $body_type);
        }
        if (!empty($maker)) {
            $query->where('Maker', $maker);
        }
        if (!empty($vehicle_name)) {
            $query->where('VehicleName', $vehicle_name);
        }
        if (!empty($yearFrom)) {
            $query->where('YearModel', '>=', $yearFrom . '01');
        }
        if (!empty($yearTo)) {
            $query->where('YearModel', '<=', $yearTo . '12');
        }
        if (!empty($cc)) {
            $query->where('EngineCapacityInCC', $cc);
        }
        if (!empty($coutry)) {
            $query->where('EngineCapacityInCC', $cc);
        }

        if (!empty($country)) {
            $query->where('TargetCountry', $country);
        }

        // $sql = $query->toSql();
        // var_dump($sql);
        return $query->paginate(25);
    }

    public static function advnaced_search($param)
     {
        $body_type =  $param['TypeOfBody'];
        $maker = $param['Maker'];
        $vehicle_name = $param['VehicleName'];
        $yearFrom = $param['yearModelFrom'];
        $yearTo = $param['yearModelTo'];
        $leftHand = $param['LeftHand'];
        $wd = $param['4WD'];
        $mileagefrom = $param['mileagefrom'];
        $mileageto = $param['mileageto'];
        $cc = $param['cc'];
        $transmission = $param['transmission'];
        $fuel = $param['fuel'];
        $color = $param['color'];
        $ab = isset($param['ab'])?$param['ab']: '';
        $ac = isset($param['ac'])?$param['ac']: '';
        $aw = isset($param['aw'])?$param['aw']: '';
        $navi = isset($param['navi'])?$param['navi']: '';
        $tv = isset($param['tv'])?$param['tv']: '';
        $ps = isset($param['ps'])?$param['ps']: '';
        $pw = isset($param['pw'])?$param['pw']: '';
        $hr = isset($param['hr'])?$param['hr']: '';
        $rs = isset($param['rs'])?$param['rs']: '';
        $sr = isset($param['sr'])?$param['sr']: '';
        $leather_seat = isset($param['LeatherSeat'])?$param['LeatherSeat']: '';
        $grillguard = isset($param['grillguard'])?$param['grillguard']: '';

        $query = self::select('ChassisNo',  'VehicleName',  'Grade', 'YearModel', 
        'EngineCapacityInCC', 'TargetPrice'
        );
        if (!empty($body_type)) {
            $query->where('TypeOfBody', $body_type);
        }
        if (!empty($maker)) {
            $query->where('Maker', $maker);
        }
        if (!empty($vehicle_name)) {
            $query->where('VehicleName', $vehicle_name);
        }
        if (!empty($yearFrom)) {
            $query->where('YearModel', '>=', $yearFrom);
        }
        if (!empty($yearTo)) {
            $query->where('YearModel', '<=', $yearTo);
        }
        if (!empty($leftHand)) {
            $query->where('LeftHand', $leftHand);
        }
        if (!empty($wd) && $wd == 0) {
            $query->where('2WD', 1);
        }
        if (!empty($wd) && $wd == 1) {
            $query->where('4WD', 1);
        }
        if (!empty($mileagefrom)) {
            $query->where('OriginalMileage', '>=',  $mileagefrom);
        }
        if (!empty($mileageto)) {
            $query->where('OriginalMileage', '<=', $mileageto);
        }

        if (!empty($cc)) {
            $query->where('EngineCapacityInCC', cc);
        }
        if (!empty($transmission) && $transmission == "AUTO") {
            $query->where('AutoTransmission', 1);
        }
        if (!empty($transmission) && $transmission == "MANUAL") {
            $query->where('ManualTransmission', 1);
        }
        if (!empty($fuel)) {
            $query->where('Fuel', $fuel);
        }
        if (!empty($color)) {
            $query->where('Color', strtoupper($color));
        }

        if (!empty($ab)) {
            $query->where('AirBag', $ab);
        }

        if (!empty($ac)) {
            $query->where('AC', $ac);
        }
        if (!empty($aw)) {
            $query->where('AlloyWheel', $aw);
        }
        if (!empty($navi)) {
            $query->where('Navigation', $navi);
        }
        if (!empty($tv)) {
            $query->where('TV', $tv);
        }
        if (!empty($dvd)) {
            $query->where('DVD', $dvd);
        }
        if (!empty($ps)) {
            $query->where('PowerSteering', $ps);
        }
        if (!empty($pw)) {
            $query->where('PowerWindow', $pw);
        }
        if (!empty($hr)) {
            $query->where('Hroof', $hr);
        }
        if (!empty($rs)) {
            $query->where('RearSpoiler', $rs);
        }
        if (!empty($sr)) {
            $query->where('TV', 1);
        }
        if (!empty($leather_seat)) {
            $query->where('LeatherSeat', $leather_seat);
        }
        // $sql = $query->toSql();
        // var_dump($sql);
        return $query->paginate(25);
    }

    public static function stock()
    {
        return self::select('ChassisNo', 'VehicleName', 'Grade', 'YearModel', 'EngineCapacityInCC', 'TargetPrice')
        ->paginate(25);  
        // return $stock;

    }

    public static function searchById($maker)
    {
        return $stock = self::select('ChassisNo', 'VehicleName', 'Grade', 'YearModel', 'EngineCapacityInCC', 'TargetPrice', 'Remarks')
        ->where("Maker", $maker)->paginate(25);  
    }

    public static function insertData($vehicles)
    {
        $inserted = 0;
        foreach($vehicles as $data) {
            $count = self::where('ChassisNo', $data->ChassisNo)->get()->count();
            if($count > 0) {
                continue;
            }
            // var_dump($data->ChassisNo);exit;
            $arr = [];
            foreach($data as $k => $v) {
               
                $arr[$k] = $v; 
            }
            $inserted = count($arr);
            // var_dump($arr);exit;
            self::insert($arr);   
        }
        
        return $inserted;
    }
   
}