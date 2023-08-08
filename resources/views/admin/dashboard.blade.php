<html lang="en">
<head>
<link rel="stylesheet" href="/css/admin.css">
</head>


<body>
    @if(Session::has('success'))
    <p>{{Session::get('success')}}</p>
    @endif
  <div class="imgcontainer">
    <img src="/images/banners/car_banner_2.png" alt="Admin Login" class="avatar">
  </div>
  <div class="container">
 <a href="/logout">Logout</a>
</div>
</body>
</html>