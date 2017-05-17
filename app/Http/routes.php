<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::resource('/', 'productController', array('names' => array('index' => 'Home')));

Route::get('/add-to-card/{id}', [
	'uses'=>'productController@addToCard',
	'as' => 'add.product'
]);

Route::get('/reduseFromCard/{id}', [
	'uses'=>'productController@getReduceByOne',
	'as' => 'reduse.product'
]);

Route::get('/removeFromCard/{id}', [
	'uses'=>'productController@getReduceAll',
	'as' => 'remove.product'
]);

Route::get('/shopping-cart', [
	'uses'=>'productController@getCard',
	'as' => 'product.shoppingCart'
]);

Route::group(['prefix' => 'user'], function(){
	/* start sugn up routes*/
	Route::group(['middleware'=> 'guest'], function(){
		Route::get('/signUp', [
				'uses'=>'signControllers@getSignUp',
				'as' => 'user.signUp'
			]);

		Route::post('/signUp', [
				'uses'=>'signControllers@postSignUp',
				'as' => 'user.signUp'
			]);
		/*end sign up routes*/

		/* start sugn in routes*/
		Route::get('/signIn', [
				'uses'=>'signControllers@getSignIn',
				'as' => 'user.signIn'
			]);

		Route::post('/signIn', [
				'uses'=>'signControllers@postSignIn',
				'as' => 'user.signIn'

			]);
		/*end sign in routes*/
	});
		/*start user routes*/
	Route::group(['middleware'=> 'auth'], function(){
		Route::resource('/profile', 'userController', array('names' => array('index' => 'user.profile',)));
		Route::get('/logout', [
				'uses'=>'userController@getlogout',
				'as' => 'user.logout'
			]);
		/*end user routes*/

		Route::post('/checkOut', [
			'uses'=>'productController@postCheckOut',
			'as' => 'checkOut'
		]);

		Route::get('/checkOut', [
			'uses'=>'productController@getCheckOut',
			'as' => 'checkOut'
		]);
	});
});
