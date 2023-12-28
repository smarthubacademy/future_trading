@extends('admin.dashboard')

@section('content')
        <!-- ============================================================== -->
        <!-- wrapper  -->
        <!-- ============================================================== -->
        <div class="dashboard-wrapper">
            <div class="dashboard-ecommerce">
                <div class="container-fluid dashboard-content ">
                    <!-- ============================================================== -->
                    <!-- pageheader  -->
                    <!-- ============================================================== -->
                    <div class="row">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="page-header">
                                <h2 class="pageheader-title">Dashboard</h2>
                                <!--<p class="pageheader-text">Nulla euismod urna eros, sit amet scelerisque torton lectus vel mauris facilisis faucibus at enim quis massa lobortis rutrum.</p>-->
                                <div class="page-breadcrumb">
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="/dashboard-admin" class="breadcrumb-link">Dashboard</a></li>
                                            <li class="breadcrumb-item active" aria-current="page">Chassis List</li>
                                        </ol>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- end pageheader  -->
                    <!-- ============================================================== -->
                    <div class="row">
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-6">
                           
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-6">
                        <button style="margin-bottom: 20px;margin-right: 20px;float: right;background: #040d5a;width: 250px;font-size: 20px;border-radius: 5px;" type="button" class="btn_transfer">Transfer Data</button>
                        </div>
                    </div>
            <div class="row">        
            <!-- ============================================================== -->
                            <!-- recent orders  -->
            <!-- ============================================================== -->
            <div class="col-xl-12 col-lg-12 col-md-6 col-sm-12 col-12">
                <div class="card">
                    <h5 class="card-header">All Stock</h5>
                    <div class="card-body p-0">
                        <div class="table-responsive">
                            <table class="table">
                                <thead class="bg-light">
                                    <tr class="border-0">
                                        <th class="border-0"><input class="stockadmin" type="checkbox" value="" id="stock"></th>
                                        <th class="border-0">Id</th>
                                        <th class="border-0">Image</th>
                                        <th class="border-0">ChassisNo</th>
                                        <th class="border-0">Vehicle Name</th>
                                        <th class="border-0">Maker</th>
                                        <th class="border-0">Year Model</th>
                                        <th class="border-0">Options</th> 
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($vehicles as $vehicle)
                                    <tr>
                                        <td><input class="stockadmin" type="checkbox" value="" id="stock"></td>
                                        <td>{{$vehicle->Id}}</td>
                                        <td>
                                            <div class="m-r-10"><img src="assets/images/product-pic.jpg" alt="user" class="rounded" width="45"></div>
                                        </td>
                                        <td>{{$vehicle->ChassisNo}}</td>
                                        <td>{{$vehicle->VehicleName}} </td>
                                        <td>{{$vehicle->Maker}}</td>
                                        <td>{{$vehicle->YearModel}}</td>
                                        <td>{{$vehicle->Grade}}, {{$vehicle->Color}}</td>  
                                    </tr>
                                    @endforeach
                                    
                            
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>  
        </div>
        <!-- ============================================================== -->
        <!-- end wrapper  -->
        <!-- ============================================================== -->
        @endsection