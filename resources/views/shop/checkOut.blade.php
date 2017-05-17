@extends('layouts.master')

@section('title')
	laravel shopping cart
@endsection

@section('content')
	<div class="row">
	  	<div class="col-sm-6 col-md-4 col-md-offset-4 col-sm-offset-3">
			<h1>checkOut</h1>
			<h4>Your Total Price: ${{ $total }}</h4>
			<div id="charge-error" class="alert alert-danger {{ !Session::has('error') ? 'hidden' : '' }}">
				{{ Session::get('error') }}
			</div>
			<form action="{{ route('checkOut') }}" method="post" id="checkOut-form">
				<div class="col-xs-12">
					<div class="form-group">
						<label for="name">name</label>
						<input type="text" id="name" class="form-control" name="name" required/>
					</div>
				</div>
				<div class="col-xs-12">
					<div class="form-group">
						<label for="address">address</label>
						<input type="text" id="address" class="form-control" name="address" required/>
					</div>
				</div>
				<div class="col-xs-12">
					<div class="form-group">
						<label for="card-name">card holder name</label>
						<input type="text" id="card-name" class="form-control" required/>
					</div>
				</div>
				<div class="col-xs-12">
					<div class="form-group">
						<label for="card-number">creidt card number</label>
						<input type="text" id="card-number" class="form-control" required/>
					</div>
				</div>
				<div class="col-xs-12">
					<div class="row">
						<div class="col-xs-6">
							<div class="form-group">
								<label for="card-expiry-month">Epiration Month</label>
								<input type="text" id="card-expiry-month" class="form-control" required/>
							</div>
						</div>
						<div class="col-xs-6">
							<div class="form-group">
								<label for="card-expiry-year">Epiration Year</label>
								<input type="text" id="card-expiry-year" class="form-control" required/>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xs-12">
					<div class="form-group">
						<label for="card-cvc">CVC</label>
						<input type="text" id="card-cvc" class="form-control" required/>
					</div>
				</div>
				{{ csrf_field() }}
				<button type="submit" class="btn btn-primary">Buy Now</button>
			</form>
	  	</div>
	</div>
@endsection

@section('scripts')
	<script type="text/javascript" src="https://js.stripe.com/v2/"></script>
	<script type="text/javascript" src="{{ asset('src/js/main.js') }}"></script>
@endsection
