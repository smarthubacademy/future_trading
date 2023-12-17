<html lang="en">
<head>
<link rel="stylesheet" href="/css/admin.css">
</head>


<body>
 
<form action="{{route('register-admin')}}" method="post">
@if(Session::has('success'))
      <p> {{Session::get('success')}}
  @endif
  @if(Session::has('fail'))
      <p> {{Session::get('fail')}}
  @endif
  @csrf
  <div class="imgcontainer">
    <img src="/images/banners/car_banner_2.png" alt="Admin Login" class="avatar">
  </div>

  <div class="container">
    <div>
        <input type="text" placeholder="Enter Name" name="name" value="{{old('name')}}">
        <p class="red">@error('name'){{$message}}@enderror</p>
    </div>
    <div>
        <input type="text" placeholder="Enter Email" name="email" value="{{old('email')}}">
        <p class="red">@error('email'){{$message}}@enderror</p>
    </div>
    <div>
        <input type="password" placeholder="Enter Password" name="password">
        <p class="red">@error('password'){{$message}}@enderror</p>
    </div>
    <div>
        <button type="submit">Register</button>
    </div>
    
  </div>
</form>
</body>
</html>