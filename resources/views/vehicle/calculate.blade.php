@extends('vehicle.master')
@section('content')

<div class="container mt-5">
   @foreach($quickSearchs['makers'] as $maker)
      <a href="/calculate?maker={{$maker->Maker}}" class="btn btn-info" role="button">{{$maker->Maker}}</a>
   @endforeach

   @include('common.calc_search')
   <table class="table table-striped">
   <thead>
    <tr>
      <th scope="col">Vehicle Name</th>
      <th scope="col">Maker</th>
      <th scope="col">Year Model</th>
      <th scope="col">Model</th>
      <th scope="col">Color</th>
      <th scope="col">Options</th>
      <th scope="col">Picture</th>
    </tr>
  </thead>
  <tbody>
   @foreach($search_list as $list)
      <?php
         $time = strtotime($list->YearModel);
         $y = date('Y/m', $time);
      ?>
    <tr>
      <td>{{$list->VehicleName}}</td>
      <td>{{$list->Maker}}</td>
      <td>{{$y}}</td>
      <td>{{$list->Model}}</td>
      <td>{{$list->Color}}</td>
      <td>{{$list->Remarks}}</td>
      <td>
      <img src="upload/images/{{$list->ChassisNo}}_1.jpg" alt="..." width = "100px" height="75px">
      </td>
      
    </tr>
    @endforeach
</tbody>
</table>
  
  <!-- banner -->
  @include('common.banner')
@endSection