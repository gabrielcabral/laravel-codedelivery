<?php

namespace CodeDelivery\Http\Controllers;

use CodeDelivery\Repositories\OrderRepository;
use CodeDelivery\Repositories\UserRepository;
use CodeDelivery\Repositories\ProductRepository;
use CodeDelivery\Services\OrderService;
use Illuminate\Http\Request;

use CodeDelivery\Http\Requests;
use CodeDelivery\Http\Requests\AdminCategoryRequest;
use CodeDelivery\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class CheckoutController extends Controller
{

    private $repository, $userRepository, $productRepository;

    public function __construct(
        OrderRepository $repository,
        UserRepository $userRepository,
        ProductRepository $productRepository,
        OrderService $orderService
    ){
        $this->repository = $repository;
        $this->userRepository = $userRepository;
        $this->productRepository = $productRepository;
        $this->orderService = $orderService;
    }

    public  function index(){
        $clientId = $this->userRepository->find(Auth::user()->id)->client->id;
        $orders = $this->repository->scopeQuery(function($query) use($clientId){
            return $query->where('client_id', '=', $clientId);
        })->paginate();
        return view('customer.order.index', compact('orders'));
    }

    public function create(){
        $products = $this->productRepository->lists();
        return view('customer.order.create', compact('products'));
    }

    public  function store(Request $request){
        $data = $request->all();
        $clientId = $this->userRepository->find(Auth::user()->id)->client->id;
        $data['client_id'] = $clientId;
        $this->orderService->create($data);
        return redirect()->route('customer.order.index');
    }

    public function edit($id){
        return view('customer.order.edit', compact('category'));
    }

    public function update(AdminCategoryRequest $request, $id){
        return redirect()->route('customer.order.index');
    }
}
