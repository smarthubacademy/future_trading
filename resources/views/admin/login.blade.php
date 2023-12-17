<html lang="en">
<head>
<link rel="stylesheet" href="/css/admin.css">
</head>


<body>
   @if(Session::has('fail'))
    <p>{{Session::get('fail')}}</p>
    @endif
<form action="{{route('login-admin')}}" method="post">
   
    @csrf
  <div class="imgcontainer">
    <img src="/images/banners/car_banner_2.png" alt="Admin Login" class="avatar">
  </div>

  <div class="container">
    <div>
        <input type="text" placeholder="Enter Email" value="{{old('email')}}" name="email">
        <p class="red">@error('email'){{$message}}@enderror</p>
    </div>
    <div>
        <input type="password" placeholder="Enter Password" name="password">
        <p class="red">@error('password'){{$message}}@enderror</p>
    </div>
    <div>
        <button type="submit">Login</button>
    </div>
    <div>
        <label>
        Forgot <a href="#">password?</a>
        </label>
    </div>
  </div>
</form>
</body>
</html>