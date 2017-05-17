@extends('layouts.master')

@section('content')
<div class="row">
	<div class="col-md-8 col-md-offset-2 text-center pro">
		<h2>welcome to Your profile</h2>
		<h3>{{ Auth::user()->email }}</h3>
		<hr/>
		@foreach($orders as $order)
			<div class="panel panel-primary cart profile">
			    	<div class="panel-heading text-center">
				    <h2 class="panel-title">my leasts payments</h2>
			    	</div>
			    	<div class="panel-body">
				   	<ul class="list-group">
						@foreach($order->cart->items as $item)
							<li class="list-group-item">
								<span class="badge">${{ $item['price'] }}</span>
								{{ $item['item']['title'] }} | <span class="badge qty">{{ $item['qty'] }} Unites</span>
							</li>
						@endforeach
						</ul>
			    	</div>
		     	<div class="panel-footer text-center">
					<span class="alert alert-info">Your Total Price Is: {{ $order->cart->totalPrice }}</span> | <span class="alert alert-warning">Your Total Quantity Is: {{ $order->cart->totalQty }}</span>
					| <span class="alert alert-success">Buy On: {{ $order->created_at }} </span>
			     </div>
			</div>
		@endforeach
	</div>
</div>
@endsection
