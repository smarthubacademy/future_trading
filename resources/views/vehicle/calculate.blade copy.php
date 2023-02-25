@extends('vehicle.master')
@section('content')

<div class="container mt-5">
   @foreach($quickSearchs['makers'] as $maker)
      <a href="/calculate?maker={{$maker->Maker}}" class="btn btn-info" role="button">{{$maker->Maker}}</a>
   @endforeach

   @include('common.quick_search')
   <div class="container">
    <!-- items card -->
   <div class="container mt-5">
      YOUR RESULT
      @foreach($search_list->chunk(4) as $chunk)
      <div class="row gy-3 my-3 text-center">
         @foreach($chunk as $list)
            <div class="col-md-3">
               <div class="card item-card">
                  <img src="upload/images/{{$list->ChassisNo}}_1.jpg" class="card-img-top img-fluid" alt="...">
                  <div class="card-body">
                     <h4 class="card-title">{{$list->VehicleName}}</h4>
                     <p class="card-text">{{$list->Model}}-{{$list->YearModel}}</p>
                     <hr class="mb-4">
                     <p class="card-text">From JPY<b>{{$list->TargetPrice}}</b></p>
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