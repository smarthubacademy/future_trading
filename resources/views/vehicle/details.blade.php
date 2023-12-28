@extends('vehicle.master')

@section('content')
<section class="blog-posts grid-system">
      <div class="container" style="margin-top:20px;">
        <div class="row">
          <div class="col-md-7">
            <div>
              <img style="border: 1px solid #f3f3f3; padding: 50px;" src="/images/banners/car_banner_2.png" alt="" class="img-fluid wc-image">
            </div>

            <br>

            <div class="row">
              <div class="col-sm-4 col-6">
                <div>
                  <img src="/images/banners/car_banner_2.png" alt="" class="img-fluid">
                </div>
                <br>
              </div>
              <div class="col-sm-4 col-6">
                <div>
                  <img src="/images/banners/car_banner_2.png" alt="" class="img-fluid">
                </div>
                <br>
              </div>
              <div class="col-sm-4 col-6">
                <div>
                  <img src="/images/banners/car_banner_2.png" alt="" class="img-fluid">
                </div>
                <br>
              </div>

              <div class="col-sm-4 col-6">
                <div>
                  <img src="assets/images/product-4-720x480.jpg" alt="" class="img-fluid">
                </div>
                <br>
              </div>
            </div>

            <br>
          </div>

          <div class="col-md-5">
            <table style="margin-top: 70px;font-size: 20px;" class="table table-striped">
                <thead>
                    <tr>
                    <th scope="col">Type</th>
                    <th style="text-align:center;" scope="col">Used vehicle</th>
                    </tr>
                </thead>
                <tbody>
                    <tr> 
                        <td>Make</td>
                        <td style="text-align:center;">Lorem ipsum</td>
                    </tr>
                    <tr> 
                        <td>Model</td>
                        <td style="text-align:center;">Lorem ipsum</td>
                    </tr>
                    <tr> 
                        <td>First registration</td>
                        <td style="text-align:center;">05/2010</td>
                    </tr>
                    <tr> 
                        <td>Mileage</td>
                        <td style="text-align:center;">5000 km</td>
                    </tr>
                    <tr> 
                        <td>Fuel</td>
                        <td style="text-align:center;">Diesel</td>
                    </tr>
                    <tr> 
                        <td>Fuel</td>
                        <td style="text-align:center;">Diesel</td>
                    </tr>
                </tbody>
            </table>
          </div>
        </div>
      </div>
    </section>
    @endSection