<?php

namespace App\Http\Controllers;

use App\User;

use Illuminate\Http\Request;

use App\Http\Requests;

use Auth;

use Session;

class signControllers extends Controller
{
  /* start sign up functions*/
  public function getSignUp()
  {
  	return view('user.signUp');
  }

  public function postSignUp(Request $request)
  {
  	$input = ($request->all());
  	$this->validate($request, [
  		'email' => "email|required|unique:users",
  		'password'=> 'required|min:4'
  	]);

  	$user = new user([
  		'email' => $input['email'],
  		'password' => bcrypt($input['password'])
  	]);

  	$user->save();

     Auth::login($user);

     if(Session::has('oldUrl')){
         $oldUrl = Session::get('oldUrl');
         Session::forget('oldUrl');
         return redirect()->to($oldUrl);
     }

  	return redirect()->route('user.profile');
  }
  /* end sign up  functions*/

  /* start sign in functions*/
  public function getSignIn()
  {
  	return view('user.signIn');
  }

  public function postSignIn(Request $request)
  {
  	$input = ($request->all());
  	$this->validate($request, [
  		'email' => "email|required",
  		'password'=> 'required|min:4'
  	]);

    if( Auth::attempt(['email' => $input['email'], 'password' => $input['password']]) ){
         if(Session::has('oldUrl')){
              $oldUrl = Session::get('oldUrl');
              Session::forget('oldUrl');
              return redirect()->to($oldUrl);
         }
         return redirect()->route('user.profile');
    }
  	return redirect()->back();
  }
  /* end sign in functions*/

}
