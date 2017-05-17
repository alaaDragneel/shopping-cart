<nav class="navbar navbar-inverse">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#app-nav" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Brand</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="app-nav">
      <ul class="nav navbar-nav">
        <li><a href="{{ route('Home') }}">Home</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
       <li>
            <a href="{{ route('product.shoppingCart') }}">
                 <i class="fa fa-shopping-cart"></i> Shopping Cart
                 <span class="badge">{{ Session::has('cart') ? Session::get('cart')->totalQty : '' }}</span>
            </a>
       </li>
        <li class="dropdown">
            @if(Auth::check())
               <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-user"></i> {{ Auth::user()->email }} <span class="caret"></span></a>
               <ul class="dropdown-menu drop">
               <li><a href="{{ route('user.profile') }}">My Profile</a></li>
               <li><a href="#">....</a></li>
               <li role="separator" class="divider"></li>
               <li><a href="{{ route('user.logout') }}">LogOut</a></li>
            @else
               <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-user"></i> JoinUs <span class="caret"></span></a>
               <ul class="dropdown-menu drop">
               <li><a href="{{ route('user.signUp') }}">SignUp</a></li>
               <li><a href="{{ route('user.signIn') }}">SignIn</a></li>
            @endif

          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>
