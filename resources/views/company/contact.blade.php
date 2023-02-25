@extends('vehicle.master')
@section('content')
   <!-- navbar -->
   <div class="container-fluid">
    <h1 class="m-3 text-center"> Contact</h1>
    <div class="row d-flex justify-content-center">
        <div class="col-md-6 ">
            <form>
                <!-- Name input -->
                <div class="mb-4">
                  <label class="form-label" for="name">Name</label>
                  <input type="text" name="name" id="name" class="form-control" />

                </div>

                <!-- Email input -->
                <div class="mb-4">
                  <label class="form-label" for="email">Email address</label>
                  <input type="email" name="email" id="email" class="form-control" />

                </div>

                <!-- Message input -->
                <div class="mb-4">
                  <label class="form-label" for="message">Message</label>
                  <textarea class="form-control" name="message" id="message" rows="4"></textarea>

                </div>

                <!-- Submit button -->
                <button type="submit" class="btn btn-primary btn-block mb-4">Submit</button>
            </form>
        </div>
    </div>
   </div>

@endSection