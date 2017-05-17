@extends('layouts.master')

@section('title')
	laravel shopping cart
@endsection

@section('content')
	@if(Session::has('success'))
		<div class="row">
			<div class="col-sm-6 col-md-4 col-md-offset-4 col-sm-offset-3">
		  	  	<div id="charge-massage" class="alert alert-success">
		  	  		{{ Session::get('success') }}
		  	  	</div>
		  	</div>
		</div>
	@endif
	@foreach($products->chunk(3) as $productChunk)
		<div class="row">
			@foreach($productChunk as $product)
				<div class="col-sm-6 col-md-4">
				    <div class="thumbnail products">
				      <img src="{{ asset('src/images/product_img/'. $product->img ) }}" alt="product Title" class="img-responsive">
				        <div class="caption">
				        	<h3>{{ $product->title }}</h3>
					        <p class="desc">{{ $product->description }}</p>
					        <div class="clearfix">
					        	<div class="pull-left price">{{ $product->price }} $</div>
					        	<a href="{{ route('add.product', ['id' => $product->id]) }}" class="btn btn-success pull-right" role="button">Add To Cart</a>
					        </div>
				        </div>
					</div>
				</div>
			@endforeach
		</div>
	  @endforeach
@endsection
