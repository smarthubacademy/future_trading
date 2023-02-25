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

    public function TransferDataFromVehicleAoto(Request $request)
    {
        $mm = new VehicleDataTransfer();
       $inserted = $mm->transferData();
       return view('dashboard', compact('inserted'));
    }

}