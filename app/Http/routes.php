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

Route::get('/', function () {
    return view('auth/login');
});

//Route::get('categories', function () {
//    $repository = app()->make('CodeDelivery\Repositories\CategoryRepository');
//    return $repository->all();
//});

Route::group(['prefix'=>'admin', 'middleware' => 'auth.checkrole:Admin' , 'as' => 'admin.'], function(){

    Route::get('categories', ['as' => 'categories.index', 'uses' => 'CategoriesController@index']);
    Route::group(['prefix'=>'categories', 'as' => 'categories.'], function() {
        Route::get('create', ['as' => 'create', 'uses' => 'CategoriesController@create']);
        Route::get('edit/{id}', ['as' => 'edit', 'uses' => 'CategoriesController@edit']);

        Route::post('update/{id}', ['as' => 'update', 'uses' => 'CategoriesController@update']);

        Route::post('store', ['as' => 'store', 'uses' => 'CategoriesController@store']);
    });

    Route::get('products', ['as' => 'products.index', 'uses' => 'ProductsController@index']);
    Route::group(['prefix'=>'products', 'as' => 'products.'], function() {

        Route::get('create', ['as' => 'create', 'uses' => 'ProductsController@create']);
        Route::get('edit/{id}', ['as' => 'edit', 'uses' => 'ProductsController@edit']);
        Route::get('destroy/{id}', ['as' => 'destroy', 'uses' => 'ProductsController@destroy']);
        Route::post('update/{id}', ['as' => 'update', 'uses' => 'ProductsController@update']);
        Route::post('store', ['as' => 'store', 'uses' => 'ProductsController@store']);
    });

    Route::get('clients', ['as' => 'clients.index', 'uses' => 'ClientsController@index']);
    Route::group(['prefix'=>'clients', 'as' => 'clients.'], function() {
        Route::get('create', ['as' => 'create', 'uses' => 'ClientsController@create']);
        Route::get('edit/{id}', ['as' => 'edit', 'uses' => 'ClientsController@edit']);
        Route::post('update/{id}', ['as' => 'update', 'uses' => 'ClientsController@update']);
        Route::post('store', ['as' => 'store', 'uses' => 'ClientsController@store']);
    });

    Route::get('orders', ['as' => 'orders.index', 'uses' => 'OrdersController@index']);
    Route::group(['prefix'=>'orders', 'as' => 'orders.'], function() {
        Route::get('create', ['as' => 'create', 'uses' => 'OrdersController@create']);
        Route::get('edit/{id}', ['as' => 'edit', 'uses' => 'OrdersController@edit']);
        Route::post('update/{id}', ['as' => 'update', 'uses' => 'OrdersController@update']);
        Route::post('store', ['as' => 'store', 'uses' => 'OrdersController@store']);
        Route::get('itens/{id}', ['as' => 'itens.index', 'uses' => 'OrderItensController@index']);
        Route::group(['prefix'=>'itens', 'as' => 'itens.'], function() {
            Route::get('create/{id}', ['as' => 'create', 'uses' => 'OrderItensController@create']);
            Route::get('destroy/{id}/{idOrder}', ['as' => 'destroy', 'uses' => 'OrderItensController@destroy']);
//            Route::get('edit/{id}', ['as' => 'edit', 'uses' => 'OrderItensController@edit']);
//
//            Route::post('update/{id}', ['as' => 'update', 'uses' => 'OrderItensController@update']);
            Route::post('store/{id}', ['as' => 'store', 'uses' => 'OrderItensController@store']);
        });
    });

    Route::get('cupoms', ['as' => 'cupoms.index', 'uses' => 'CupomsController@index']);
    Route::group(['prefix'=>'cupoms', 'as' => 'cupoms.'], function() {
        Route::get('create', ['as' => 'create', 'uses' => 'CupomsController@create']);
        Route::get('edit/{id}', ['as' => 'edit', 'uses' => 'CupomsController@edit']);
        Route::post('update/{id}', ['as' => 'update', 'uses' => 'CupomsController@update']);
        Route::post('store', ['as' => 'store', 'uses' => 'CupomsController@store']);
    });
});

Route::group(['prefix'=>'customer', 'middleware' => 'auth.checkrole:client', 'as' => 'customer.'], function(){
    Route::get('order', ['as' => 'order.index', 'uses' => 'CheckoutController@index']);
    Route::group(['prefix'=>'order', 'as' => 'order.'], function() {
        Route::get('create', ['as' => 'create', 'uses' => 'CheckoutController@create']);
        Route::post('store', ['as' => 'store', 'uses' => 'CheckoutController@store']);
    });
});

Route::post('oauth/access_token', function() {
    return Response::json(Authorizer::issueAccessToken());
});

Route::group(['prefix'=>'api', 'middleware' => 'oauth', 'as' => 'api.'], function(){

    Route::group(['prefix' => 'client', 'middleware' => 'oauth.checkrole:client', 'as' => 'client.'], function () {
        Route::resource('order', 'Api\Client\ClientCheckoutController', [
            'except' => ['create', 'edit', 'destroy']
        ]);
    });

    Route::group(['prefix' => 'deliveryman', 'middleware' => 'oauth.checkrole:deliveryman', 'as' => 'deliveryman.'], function () {
        Route::resource('order', 'Api\Deliveryman\DeliverymanCheckoutController', [
             'except' => ['create', 'edit', 'destroy', 'store']
         ]);

         Route::patch('order/{id}/update-status',[
             'uses' => 'Api\Deliveryman\DeliverymanCheckoutController@updateStatus',
             'as' => 'orders.update_status'
         ]);
    });
});
