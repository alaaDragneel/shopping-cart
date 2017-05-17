@extends('layouts.master')

@section('title')
	laravel shopping cart
@endsection

@section('content')
	@if(Session::has('cart'))
		<div class="row">
			 <div class="panel panel-primary cart">
				<h2 class="panel-heading text-center">My Shopping Cart</h2>
				<div class="panel-body">
					<table class="table table-striped table-bordered table-hover">
						<thead>
							<tr>
								<td><?php $numOfPro = 0; ?>#</td>
								<td>Title</td>
								<td>Description</td>
								<td>Image</td>
								<td>Price</td>
								<td>Quantity</td>
								<td>Actions</td>
							</tr>
						</thead>
						<tbody>
							@foreach($products as $product)
								<tr>
									<td><?php echo ++$numOfPro ?></td>
									<td>{{ $product['item']['title'] }}</td>
									<td>{{ $product['item']['description'] }}</td>
									<td><img class="img-thumbnail img-responsive" src="{{ asset('src/images/product_img/'.$product['item']['img']) }}" /></td>
									<td>{{ $product['price'] }} $</td>
									<td><span class="badge">{{ $product['qty'] }}</span></td>
									<td>
										<span class="dropdown">
											<a href="#" class="dropdown-toggle btn btn-primary"
											   data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
												<i class="fa fa-edit"></i> Actions
												<span class="caret"></span>
											</a>
											<ul class="dropdown-menu">
											   	<li><a href="{{ route('reduse.product', ['id' => $product['item']['id']]) }}">reduce by 1</a></li>
												<li><a href="{{ route('remove.product', ['id' => $product['item']['id']]) }}">reduce by all</a></li>
											</ul>
										</span>
								  	</td>
								</tr>
							@endforeach
							<tr>
								<td>Total</td>
								<td>{{ $totalPrice }} $</td>
								<td colspan="5">
									<a href="{{ route('checkOut') }}" type="button" class="btn btn-success">CheckOut</a>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	@else
		<div class="row">
		  <div class="col-sm-6 col-md-6 col-md-offset-3 col-sm-offset-3">
			 <div class="alert alert-warning">No Items In The Cart!</div>
		  </div>
	  	</div>
	@endif

@endsection
