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

   <div class="container">
      <form id="quick_seaach" action="/{{$action}}" method="post">
         <input type="hidden" name="_token" value="{{ csrf_token() }}" />
         <div class="row justify-content-between">
            <div class="col-md-2">
               <select id="TypeOfBody" name="TypeOfBody" class="form-select" aria-label="Default select example">
                  <option value="" selected>Type</option>
                  @foreach($quickSearchs['bodytypes'] as $body)
                     <option value="{{$body->TypeOfBody}}" @if($keys['TypeOfBody'] == $body->TypeOfBody) selected="selected" @endif>{{$body->TypeOfBody}}</option>
                  @endforeach
               </select>
            </div> 
            <div class="col-md-2">
               <select id="Maker" name="Maker" class="form-select" aria-label="Default select example">
               <option value="" selected>Maker</option>
                  @foreach($quickSearchs['makers'] as $maker)
                     <option value="{{$maker->Maker}}" @if($keys['Maker'] == $maker->Maker) selected="selected" @endif>{{$maker->Maker}}</option>
                  @endforeach
               </select>
            </div>
            <div class="col-md-2">
               <select id="VehicleName" name="VehicleName" class="form-select" aria-label="Default select example">
               <option value="" selected>Name</option>
                  @foreach($quickSearchs['vehiclenames'] as $vehiclename)
                     <option value="{{$vehiclename->VehicleName}}" @if($keys['VehicleName'] == $vehiclename->VehicleName) selected="selected" @endif>{{$vehiclename->VehicleName}}</option>
                  @endforeach
               </select>
            </div>
            <div class="col-md-2">
            <select id="yearModelFrom" name="yearModelFrom" class="form-select" aria-label="Default select example">
               <option value="" selected>YearModel</option>
                  @foreach($quickSearchs['yearModels'] as $yearModel)
                     <option value="{{$yearModel->YearModel}}" @if($keys['yearModelFrom'] == $yearModel->YearModel) selected="selected" @endif>{{$yearModel->YearModel}}</option>
                  @endforeach
               </select>
            </div>
            <div class="col-md-2">
            <select id="yearModelTo" name="yearModelTo" class="form-select" aria-label="Default select example">
               <option value="" selected>YearModel</option>
                  @foreach($quickSearchs['yearModels'] as $yearModel)
                     <option value="{{$yearModel->YearModel}}" @if($keys['yearModelTo'] == $yearModel->YearModel) selected="selected" @endif>{{$yearModel->YearModel}}</option>
                  @endforeach
               </select>
            </div>
            <div class="col-md-2">
               <select id="cc" name="cc" class="form-select" aria-label="Default select example">
                  <option value="">CC</option>
                  @foreach($quickSearchs['ccs'] as $cc)
                     <option value="{{$cc->EngineCapacityInCC}}" @if($keys['cc'] == $cc->EngineCapacityInCC) selected="selected" @endif>{{$cc->EngineCapacityInCC}}</option>
                  @endforeach
               </select>
            </div>
            <div class="col-md-2 show">
               <select id="country" name="country" class="form-select" aria-label="Default select example">
                  <option value="">COUNTRY</option>
                  @foreach($quickSearchs['countries'] as $country)
                     <option value="{{$country->CountryName}}" @if($keys['country'] == $country->CountryName) selected="selected" @endif>{{$country->CountryName}}</option>
                  @endforeach  
               </select>
               @if(!empty($message)) <p>{{$message}}</p> @endif
            </div>
           
            <div class="col-md-2 d-flex align-items-center mt-4">
               <button type="submit" class="btn btn-primary">
                  <i class="fa-solid fa-magnifying-glass"></i>
                  {{$action}}
               </button>
            </div>
       </div>
     </form>
  </div>