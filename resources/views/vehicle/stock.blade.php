@extends('vehicle.master')
@section('content')

<div class="container mt-5">
   @foreach($quickSearchs['makers'] as $maker)
      <a href="/stock?maker={{$maker->Maker}}" class="btn btn-info" role="button">{{$maker->Maker}}</a>
   @endforeach
   @include('common.quick_search')
   <div class="container">  
    <!-- items card -->
   <div class="container mt-5">
      YOUR RESULT
      @foreach($stock_list->chunk(4) as $chunk)
      <div class="row gy-3 my-3 text-center">
         @foreach($chunk as $stock_list)
            <div class="col-md-3">
               <div class="card item-card">
                  <img src="upload/images/{{$stock_list->ChassisNo}}_1.jpg" class="card-img-top img-fluid" alt="...">
                  <div class="card-body">
                     <h4 class="card-title">{{$stock_list->VehicleName}}</h4>
                     <p class="card-text">{{$stock_list->Model}}-{{$stock_list->YearModel}}</p>
                     <hr class="mb-4">
                     <p class="card-text">From JPY<b>{{$stock_list->TargetPrice}}</b></p>
                  </div>
               </div>
            </div>
         @endforeach
           
      </div>
      @endforeach
     
   </div>
     
   </div>

  <!-- banner -->
  @include('common.banner')
@endSection