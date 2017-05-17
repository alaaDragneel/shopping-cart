<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use Auth;

class userController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
         $orders = Auth::user()->orders;
         $orders->transform(function($order, $key){
              $order->cart = unserialize($order->cart);
              return $order;
         });
         return view('user.profile', compact('orders'));
    }

    public function getlogout()
    {
         Auth::logout();
         return redirect()->route('user.signIn');
    }
}
