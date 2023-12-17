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

    public function a2list()
    {
        $a2model = new VehicleDataTransfer();
        $inserted = $a2model->a2list();
        var_dump($inserted);
        
        return view('admin.dashboard', compact('inserted'));  
    }
    public function transferDataFromVehicleAoto(Request $request)
    {
        $mm = new VehicleDataTransfer();
       $inserted = $mm->transferData();
       return view('admin.dashboard', compact('inserted'));
    }

}