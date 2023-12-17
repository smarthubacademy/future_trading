<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Validator;
use App\Models\VehicleDataTransfer;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Log;
use Session;

class VehicleDataTransferController extends Controller
{

    public function admin_stock()
    {
        $a2model = new VehicleDataTransfer();
        $vehicles = $a2model->admin_stock();
        
        return view('admin.dashboard', compact('vehicles'));  
    }
    public function transferDataFromVehicleAoto(Request $request)
    {
        $mm = new VehicleDataTransfer();
       $inserted = $mm->transferData();
       return view('admin.dashboard', compact('inserted'));
    }

}