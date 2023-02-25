<div class="row my-3 gy-3">
    <!--<div class="col-sm-6 col-md-4">-->
    <!--   <div class="card ex_card">-->
    <!--      <div class="row">-->
    <!--         <div class="col-md-5 p-1">-->
    <!--            <img src="{{ asset('public/ui/frontend/image/subaru.png')}}" class="card-img-top" alt="Brand Logo">-->
    <!--         </div>-->
    <!--         <div class="col-md-7 p-1">-->
    <!--            <h6 class="card-title">-->
    <!--               Subaro-->
    <!--            </h6>-->
    <!--            <p class="card-text text-muted">-->
    <!--               From $40K-->
    <!--            </p>-->
    <!--         </div>-->
    <!--      </div>-->
    <!--   </div>-->
    <!--</div>-->
   
 @foreach($cars as $car)
   <div class="col-sm-6 col-md-4">
      <div class="card">
         <div class="row">
            <div class="col p-1">
               <a href="">
                  <h6 class="card-title">
                     {{$car->make}}
                  </h6>
               </a>
            </div>
         </div>
      </div>
   </div>
@endforeach
</div>