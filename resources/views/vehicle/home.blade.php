@extends('vehicle.master')

@section('content')
<div class="container-fluid">
   <img src="/images/banners/main_banner_1.jpeg" class="img-fluid mx-auto d-block" alt="">
   @include('common.quick_search')
    <!-- items card -->
   <div class="container-fluid">
      NEW ARRIVAL
      @foreach($newArrivalList->chunk(4) as $chunk)
      <div class="row gy-3 my-3 text-center">
         @foreach($chunk as $newArrival)
            <div class="col-md-3"><a href="#">
               <div class="card item-card">
                  <img src="upload/images/{{$newArrival->ChassisNo}}_1.jpg" class="card-img-top img-fluid" alt="...">
                  <div class="card-body">
                     <h4 class="card-title">{{$newArrival->VehicleName}}</h4>
                     <p class="card-text">{{$newArrival->Model}}-{{$newArrival->YearModel}}</p>
                     <hr class="mb-4">
                     <p class="card-text">From JPY<b>{{$newArrival->TargetPrice}}</b></p>
                  </div>
               </div></a>
            </div>
         @endforeach
           
      </div>
      @endforeach
     
   </div>

   <div class="container-fluid mt-5">
      MOST AFFORDABLE
      @foreach($mostAffordableList->chunk(4) as $chunk)
      <div class="row gy-3 my-3 text-center">
         @foreach($chunk as $mostAffordable)
            <div class="col-md-3"><a href="#">
               <div class="card item-card">
                  <img src="upload/images/{{$newArrival->ChassisNo}}_1.jpg" class="card-img-top img-fluid" alt="...">
                  <div class="card-body">
                     <h4 class="card-title">{{$mostAffordable->VehicleName}}</h4>
                     <p class="card-text">{{$mostAffordable->Model}}-{{$mostAffordable->YearModel}}</p>
                     <hr class="mb-4">
                     <p class="card-text">From JPY<b>{{$mostAffordable->TargetPrice}}</b></p>
                  </div>
               </div></a>
            </div>
         @endforeach
           
      </div>
      @endforeach
     
   </div>

   <div class="container-fluid">
      HIGH GRADE
      @foreach($highGradedList->chunk(4) as $chunk)
      <div class="row gy-3 my-3 text-center">
         @foreach($chunk as $highGraded)
            <div class="col-md-3">
               <div class="card item-card">
                  <img src="upload/images/{{$newArrival->ChassisNo}}_1.jpg" class="card-img-top img-fluid" alt="...">
                  <div class="card-body">
                     <h4 class="card-title">{{$highGraded->VehicleName}}</h4>
                     <p class="card-text">{{$highGraded->Model}}-{{$highGraded->YearModel}}</p>
                     <hr class="mb-4">
                     <p class="card-text">From JPY<b>{{$mostAffordable->TargetPrice}}</b></p>
                  </div>
               </div>
            </div>
         @endforeach
           
      </div>
      @endforeach
     
   </div>

  <!-- banner -->
  @include('common.banner')
@endSection