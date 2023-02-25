@extends('vehicle.master')
@section('content')

<div class="container mt-5">
@include('common.advanced_search')
   <div class="container">  
    <!-- items card -->
   <div class="container mt-5">
      YOUR RESULT
      @foreach($search_list->chunk(4) as $chunk)
      <div class="row gy-3 my-3 text-center">
         @foreach($chunk as $quick_search)
            <div class="col-md-3">
               <div class="card item-card">
                  <img src="upload/images/{{$quick_search->ChassisNo}}_1.jpg" class="card-img-top img-fluid" alt="...">
                  <div class="card-body">
                     <h4 class="card-title">{{$quick_search->VehicleName}}</h4>
                     <p class="card-text">{{$quick_search->Model}}-{{$quick_search->YearModel}}</p>
                     <hr class="mb-4">
                     <p class="card-text">From JPY<b>{{$quick_search->TargetPrice}}</b></p>
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