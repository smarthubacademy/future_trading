<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>
      SMG Motors
   </title>
   <link rel="stylesheet" href="{{ asset('public/ui/frontend/style.css')}}">
   <!-- Bootstrap Css -->
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
   <!-- font awesome icon -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css"
      integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A=="
      crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

<body>
   <!-- navbar -->
   @include('common.navbar')
   </div>
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



   <!-- footer -->
   @include('frontend.layouts.partials.footer')
   <!-- bootstrap JS -->
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
      </script>
</body>

</html>