<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use App\Cart;

use App\Product;

use Auth;

use App\Order;

use Session;

use Stripe\Stripe;

use Stripe\Charge;

use Stripe\Customer;

class productController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $products = Product::all();
        return view('shop.index', compact('products'));
    }

    public function addToCard(Request $request, $id)
    {
        $product = Product::find($id);
        $oldCart = Session::has('cart') ? Session::get('cart') : null;
        $cart = new Cart($oldCart);
        $cart->add($product, $product->id);
        $request->session()->put('cart', $cart);
        return redirect()->route('Home');
    }

    public function getReduceByOne($id)
    {
        $oldCart = Session::has('cart') ? Session::get('cart') : null;
        $cart = new Cart($oldCart);
        $cart->reduceByOne($id);
        if(count($cart->items) > 0){
             Session::put('cart', $cart);
        }else{
             Session::forget('cart');
        }         return redirect()->route('product.shoppingCart');
    }

    public function getReduceAll($id)
    {
        $oldCart = Session::has('cart') ? Session::get('cart') : null;
        $cart = new Cart($oldCart);
        $cart->reduseByAll($id);

        if(count($cart->items) > 0){
             Session::put('cart', $cart);
        }else{
             Session::forget('cart');
        }


        return redirect()->route('product.shoppingCart');
    }

    public function getCard()
    {
         if(!Session::has('cart')){
              return view('shop.shopping-cart');
         }
         $oldCart = Session::get('cart');
         $cart = new Cart($oldCart);
         return view('shop.shopping-cart', ['products' => $cart->items, 'totalPrice' => $cart->totalPrice]);
    }

    public function getCheckOut()
    {
         if(!Session::has('cart')){
              return view('shop.shopping-cart');
         }
         $oldCart = Session::get('cart');

         $cart = new Cart($oldCart);

         $total = $cart->totalPrice;

         return view('shop.checkOut', compact('total'));
    }

    public function postCheckOut(Request $request)
    {
         if(!Session::has('cart')){
              return redirect()->route('product.shoppingCart');
         }

         $oldCart = Session::get('cart');

         $cart = new Cart($oldCart);

         Stripe::setApiKey('sk_test_KrBBFpAcMcuwINRGwXNY5KOz');

         /*$customer = Customer::create(array(
              "source" => $request->input('stripeToken'),
              "description" => "Example customer")
         );

         Charge::create(array(
            "amount" => 1000, // Amount in cents
            "currency" => "usd",
            "customer" => $customer->id)
       );*/
         try{
               $charge = Charge::create(array(
                 "amount" => $cart->totalPrice * 100,
                 "currency" => "usd",
                 "source" => $request->input('stripeToken'), // obtained with Stripe.js
                 "description" => "test the first charge from back-end",
                 "customer" => 'cus_9D4K0LB0c848ZF'
               ));
               $order = new Order();
               $order->cart = serialize($cart);
               $order->address = $request->input('address');
               $order->name = $request->input('name');
               $order->payment_id = $charge->id;
               //$order->user_id = Auth::user()->id;
               //$order->save();

               Auth::user()->orders()->save($order);
         } catch(\Exception $e){
              return redirect()->route('checkOut')->with('error', $e->getMessage());
         }

         Session::forget('cart');

         return redirect()->route('Home')->with('success', 'successfully purchased products!');
    }
}
