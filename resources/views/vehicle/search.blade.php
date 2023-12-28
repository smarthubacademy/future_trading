@extends('vehicle.master')
@section('content')

<div class="container-fluid mt-5">
   <div class="row text-center">
      <div class="col-md-12">
         @include('common.advanced_search')
      </div>
   </div>
   <div class="row text-center">
      <div class="col-md-12">
      <h1>YOUR RESULT</h1>
      </div>
   </div>
      
      @foreach($search_list->chunk(4) as $chunk)
      <div class="row gy-3 my-3 text-center">
         @foreach($chunk as $quick_search)
            <div class="col-md-3"><a href="#">
               <div class="card item-card">
                  <img src="upload/images/{{$quick_search->ChassisNo}}_1.jpg" class="card-img-top img-fluid" alt="...">
                  <div class="card-body">
                     <h4 class="card-title">{{$quick_search->VehicleName}}</h4>
                     <p class="card-text">{{$quick_search->Model}}-{{$quick_search->YearModel}}</p>
                     <hr class="mb-4">
                     <p class="card-text">From JPY<b>{{$quick_search->TargetPrice}}</b></p>
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