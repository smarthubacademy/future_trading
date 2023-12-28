@extends('vehicle.master')
@section('content')

<div class="container-fluid mt-5 btn_search">
   @foreach($quickSearchs['makers'] as $maker)
      <a href="/stock?maker={{$maker->Maker}}" class="btn btn-info" role="button">{{$maker->Maker}}</a>
   @endforeach
   <div style="margin-right: 17px;margin-left: 17px;">
      @include('common.quick_search')
   </div>
    <!-- items card -->
   <div style="margin-right: 13px;margin-left: 13px;" class="mt-5">
      YOUR RESULT
      @foreach($stock_list->chunk(4) as $chunk)
      <div class="row gy-3 my-3 text-center">
         @foreach($chunk as $stock_list)
            <div class="col-md-3"><a href="#">
               <div class="card item-card">
                  <img src="upload/images/{{$stock_list->ChassisNo}}_1.jpg" class="card-img-top img-fluid" alt="...">
                  <div class="card-body">
                     <h4 class="card-title">{{$stock_list->VehicleName}}</h4>
                     <p class="card-text">{{$stock_list->Model}}-{{$stock_list->YearModel}}</p>
                     <hr class="mb-4">
                     <p class="card-text">From JPY<b>{{$stock_list->TargetPrice}}</b></p>
                  </div>
               </div></a>
            </div>
         @endforeach
           
      </div>
      @endforeach
     
   </div>

  <!-- banner -->
  @include('common.banner')
@endSection