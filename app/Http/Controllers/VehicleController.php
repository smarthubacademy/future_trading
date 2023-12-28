<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Validator;
use App\Models\Vehicle;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Log;
use Session;

class VehicleController extends Controller
{
    // Home page
    public function index(Request $request){
        $keys = ['TypeOfBody' => '', 'Maker' => '', 'VehicleName' => '', 'yearModelFrom' => '', 'yearModelTo' => '', 'cc' => '', 'country' => ''];
        // $vehicle = Vehicle::getAll();
        $newArrivalList = Vehicle::newArrival();
        $mostAffordableList = Vehicle::mostAffordable();
        $highGradedList = Vehicle::highGraded();
        $quickSearchs = $this->getQuickSearchObj();
        $action = "quick_search";
        return view ('vehicle.home', compact('action', 'keys', 'quickSearchs',
        'newArrivalList', 'mostAffordableList', 'highGradedList'));
    }

    public function getQuickSearchObj()
    {
        return [
            'bodytypes' => DB::table('bodytypes')->select('TypeOfBody')->get(),
            'makers' => DB::table('makers')->select('Maker')->get(),
            'vehiclenames' => DB::table('vehiclenames')->select('VehicleName')->get(),
            'ccs' => DB::table('ccs')->select('EngineCapacityInCC')->get(),
            'yearModels' => DB::table('years')->select('YearModel')->get(),
            'countries' => DB::table('countries')->select('CountryName')->get()
        ];
    }

    public function getAdvancedSearchObj()
    {
        return [
            'bodytypes' => DB::table('bodytypes')->select('TypeOfBody')->get(),
            'makers' => DB::table('makers')->select('Maker')->get(),
            'vehiclenames' => DB::table('vehiclenames')->select('VehicleName')->get(),
            'ccs' => DB::table('ccs')->select('EngineCapacityInCC')->get(),
            'yearModels' => DB::table('years')->select('YearModel')->get(),
            'mileages' => DB::table('mileages')->select('mileage')->orderby('mileage')->get(),
            'colors' => DB::table('colors')->select('color')->orderby('color')->get(),
            'fuels' => DB::table('fuels')->select('fuel')->orderby('id')->get(),
        ];
    }
    //quick search page
    public function quick_search(Request $request)
    {
        Log::debug("quick_search");
        $keys = $request->all();
        $quick_search_list = Vehicle::quickSearch($keys);
        $quickSearchs = $this->getQuickSearchObj();
        $action = "quick_search";
        return view ('vehicle.search_list', compact('action', 'keys', 'quickSearchs', 'quick_search_list'));
    }

    //displaying default stock page
    public function stock(Request $request)
    {
        $keys = ['TypeOfBody' => '', 'Maker' => '', 'VehicleName' => '', 'yearModelFrom' => '', 'yearModelTo' => '', 'cc' => '', 'country' => ''];
        if(empty($request->input('maker'))) {
            $stock_list = Vehicle::stock(); 
        } else {
            $stock_list = Vehicle::searchById($request->input('maker'));
        }
        $quickSearchs = $this->getQuickSearchObj();
        $action = "stock_search";
        return view ('vehicle.stock', compact('action', 'keys', 'quickSearchs', 'stock_list'));
    }
    // Searching from stock page
    public function stock_search(Request $request)
    {
        $keys = $request->all();
        $stock_list = Vehicle::stockSearch($keys);
        $quickSearchs = $this->getQuickSearchObj();
        $action = "stock_search";
        return view ('vehicle.stock', compact('action', 'keys', 'quickSearchs', 'stock_list'));

    }

    // Displaying advnaced search page
    public function search(Request $request)
    {
        $keys = ['TypeOfBody' => '', 'Maker' => '', 'VehicleName' => '', 'yearModelFrom' => '', 'yearModelTo' => '', 'cc' => '', 'country' => '',
        'mileagefrom' => '', 'mileageto' => '', 'color' => '', 'fuel' => '']; 
        $search_list = Vehicle::stock($keys);
        $advSearch = $this->getAdvancedSearchObj();
        $action = "advanced_search";
        return view ('vehicle.search', compact('action', 'keys', 'advSearch', 'search_list'));
    }

    //Dispaly the result of advanced search
    public function advanced_search(Request $request)
    {
        $keys = $request->all();
        $search_list = Vehicle::advnaced_search($keys);
        $advSearch = $this->getAdvancedSearchObj();
        $action = "advanced_search";

        return view ('vehicle.search', compact('action', 'keys', 'advSearch', 'search_list'));

    }

    public function priceCalculate(Request $request)
    {
        $keys = ['TypeOfBody' => '', 'Maker' => '', 'VehicleName' => '', 'yearModelFrom' => '', 'yearModelTo' => '', 'cc' => '', 'country' => ''];
        if(empty($request->input('maker'))) {
            $search_list = Vehicle::calculate(); 
        } else {
            $search_list = Vehicle::searchById($request->input('maker'));
        }
        $message = "";
        if(Session::has('error')) {
            $message = Session::get('error');
        }
        $quickSearchs = $this->getQuickSearchObj();
        $action = "calculate";
        return view ('vehicle.calculate', compact('action', 'keys', 'message', 'quickSearchs', 'search_list'));

    }

    public function calculate(Request $request)
    {
        $keys = $request->all();
        $validator = Validator::make($keys, [
            'country' => 'required'
        ]);
 
        if ($validator->fails()) {
            Session::put("error", "Select Country");
            return redirect('/calculate');
        }

        $search_list = Vehicle::calculate($keys);
        $quickSearchs = $this->getQuickSearchObj();
        $action = "calculate";
        return view ('vehicle.calculate', compact('action', 'keys', 'quickSearchs', 'search_list'));

    }

    public function store(Request $request){
        return $request->all();
        return view ('frontend.home');
    }

    public function contact(Request $request){
        return view ('company.contact');
    }
    public function details(Request $request){
        return view ('vehicle.details');
    }
    public function about(Request $request){
        return view ('company.about');
    }
    public function profile(Request $request){
        return view ('company.profile');
    }
    public function howto(Request $request)
    {
        return view ('company.howto_buy');  
    }
    public function customer_review(Request $request)
    {
        return view ('company.customer_review');  
    }

    //admin part start here
    public function list(Request $request)
    {
        var_dump("YESS");
    }

    // public function transferFromAuto(Request $request)
    // {
    //     getDataFromVehicleAuto();
    //     $values = array('id' => 1,'name' => 'Dayle');
    //     DB::table('users')->insert($values);
    //     var_dump("Transfered");
    // }
   
    
}
