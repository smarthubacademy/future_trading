<div class="container">
      <div class="row">
         <div class="col-md-12 text-center m-3">
            <h1>
               Find The Car You Want,
               <span>
                  <b>
                     Your Way
                  </b>
               </span>
            </h1>
         </div>
      </div>
   </div>

   <div class="adv_search">
      <form id="quick_seaach" action="/{{$action}}" method="post">
         <input type="hidden" name="_token" value="{{ csrf_token() }}" />
         <div class="row justify-content-between">

            <div class="col-md-2">
               <select id="TypeOfBody" name="TypeOfBody" class="form-select" aria-label="Default select example">
                  <option value="" selected>Type</option>
                  @foreach($advSearch['bodytypes'] as $body)
                     <option value="{{$body->TypeOfBody}}" @if($keys['TypeOfBody'] == $body->TypeOfBody) selected="selected" @endif>{{$body->TypeOfBody}}</option>
                  @endforeach
               </select>
            </div>

            <div class="col-md-2">
               <select id="Maker" name="Maker" class="form-select" aria-label="Default select example">
               <option value="" selected>Maker</option>
                  @foreach($advSearch['makers'] as $maker)
                     <option value="{{$maker->Maker}}" @if($keys['Maker'] == $maker->Maker) selected="selected" @endif>{{$maker->Maker}}</option>
                  @endforeach
               </select>
            </div>

            <div class="col-md-2">
               <select id="VehicleName" name="VehicleName" class="form-select" aria-label="Default select example">
               <option value="" selected>Name</option>
                  @foreach($advSearch['vehiclenames'] as $vehiclename)
                     <option value="{{$vehiclename->VehicleName}}" @if($keys['VehicleName'] == $vehiclename->VehicleName) selected="selected" @endif>{{$vehiclename->VehicleName}}</option>
                  @endforeach
               </select>
            </div>

            <div class="col-md-2">
            <select id="yearModelFrom" name="yearModelFrom" class="form-select" aria-label="Default select example">
               <option value="" selected>YearModel</option>
                  @foreach($advSearch['yearModels'] as $yearModel)
                     <option value="{{$yearModel->YearModel}}" @if($keys['yearModelFrom'] == $yearModel->YearModel) selected="selected" @endif>{{$yearModel->YearModel}}</option>
                  @endforeach
               </select>
            </div>
            <div class="col-md-2">
               <select id="yearModelTo" name="yearModelTo" class="form-select" aria-label="Default select example">
                  <option value="" selected>YearModel</option>
                     @foreach($advSearch['yearModels'] as $yearModel)
                        <option value="{{$yearModel->YearModel}}" @if($keys['yearModelTo'] == $yearModel->YearModel) selected="selected" @endif>{{$yearModel->YearModel}}</option>
                     @endforeach
               </select>
            </div>

            <div class="col-md-2">
               <select id="cc" name="cc" class="form-select" aria-label="Default select example">
               <option value="">CC</option>
                  @foreach($advSearch['ccs'] as $cc)
                     <option value="{{$cc->EngineCapacityInCC}}" @if($keys['cc'] == $cc->EngineCapacityInCC) selected="selected" @endif>{{$cc->EngineCapacityInCC}}</option>
                  @endforeach
               </select>
            </div>
         </div>
         <div class="row justify-content-between btm-mg">
            <div class="col-md-2">
               <select id="LeftHand" name="LeftHand" class="form-select" aria-label="Default select example">
                  <option value="">STEERING</option>
                  <option value="1">LEFT HAND STEERING</option>
                  <option value="0">RIGHT HAND STEERING</option>
               </select>
            </div>
            <div class="col-md-2">
               <select id="4WD" name="4WD" class="form-select" aria-label="Default select example">
                  <option value="">DRIVE</option>
                  <option value="0">2WD</option>
                  <option value="1">4WD</option>
               </select>
            </div>
            <div class="col-md-2">
               <select id="mileagefrom" name="mileagefrom" class="form-select" aria-label="Default select example">
                  <option value="">MILEAGE FROM</option>
                  @foreach($advSearch['mileages'] as $mileage)
                  <option value="{{$mileage->mileage}}" @if($keys['mileagefrom'] == $mileage->mileage) selected="selected" @endif>{{$mileage->mileage}} km</option>
                 @endforeach
               </select>
            </div>
            <div class="col-md-2">
               <select id="mileageto" name="mileageto" class="form-select" aria-label="Default select example">
                  <option value="">MILEAGE TO</option>
                  @foreach($advSearch['mileages'] as $mileage)
                  <option value="{{$mileage->mileage}}" @if($keys['mileageto'] == $mileage->mileage) selected="selected" @endif>{{$mileage->mileage}} km</option>
                 @endforeach
               </select>
            </div>
            <div class="col-md-2">
               <select id="transmission" name="transmission" class="form-select" aria-label="Default select example">
                   <option value="">TRANSMISSION</option>
                  <option value="AUTO">AUTOMATIC</option>
                  <option value="MANUAL">MANUAL</option>
                  <option value="30000">SMOOTHER</option>
               </select>
            </div>
            <div class="col-md-2">
            <select id="fuel" name="fuel" class="form-select" aria-label="Default select example">
               <option value="">FUEL</option>
                  @foreach($advSearch['fuels'] as $fuel)
               <option value="{{$fuel->fuel}}" @if($keys['fuel'] == $fuel->fuel) selected="selected" @endif>{{$fuel->fuel}}</option>
                 @endforeach
               </select>
            </div>
         </div>
         <div class="row justify-content-between btm-mg">   
            <div class="col-md-2">
               <select id="color" name="color" class="form-select" aria-label="Default select example">
                   <option value="">COLOR</option>
                   @foreach($advSearch['colors'] as $color)
                     <option value="{{$color->color}}" @if($keys['color'] == $color->color) selected="selected" @endif>{{$color->color}}</option>
                   @endforeach
               </select>
            </div>

            <div class="col-md-10 check-box">
               OPTIONS:
               <input type="checkbox" name="ab" id="ab" value="1"> Air Bag
               <input type="checkbox" name="ac" id="ac" value="1"> Air Conditioner
               <input type="checkbox" name="aw" id="aw" value="1"> Alloy Wheels
               <input type="checkbox" name="navi" id="navigation" value="1"> Navigation
               <input type="checkbox" name="tv" id="tv" value="1"> TV
               <input type="checkbox" name="dvd" id="dvd" value="1"> DVD
               
               <input type="checkbox" name="ps" id="ps" value="1"> Power Steering
               <input type="checkbox" name="pw" id="pw" value="1"> Power Windows
               <input type="checkbox" name="hr" id="hr" value="1"> Hight Roof
               <input type="checkbox" name="rs" id="rs" value="1"> Rear Spoiler
               <input type="checkbox" name="sr" id="sr" value="1"> Sun Roof
               <input type="checkbox" name="leather_seat" id="leather_seat" value="1"> Leather Seat
               <input type="checkbox" name="grillguard" id="grillguard" value="1"> Grill Guard
               <input type="checkbox" name="hdeck" id="hdeck" value="1"> High Deck
            </div>
         </div> 
         <div class="row justify-content-between">  
            <div class="col-md-12 text-end">
               <button type="submit" class="btn btn-primary">
                  <i class="fa-solid fa-magnifying-glass"></i>
                  {{$action}}
               </button>
            </div>
       </div>
     </form>
  </div>