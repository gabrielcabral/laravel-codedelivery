<?php

namespace CodeDelivery\Http\Controllers\Api\Client;

use CodeDelivery\Http\Controllers\Controller;
use CodeDelivery\Http\Requests;

class ClientCheckoutController extends Controller
{

    /*   private $repository, $userRepository, $productRepository;

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
           $id = Authorizer::getResourceOwnerID();
           $clientId = $this->userRepository->find($id)->client->id;
           $orders = $this->repository->with(['items'])->scopeQuery(function($query) use($clientId){
               return $query->where('client_id', '=', $clientId);
           })->paginate();
           return $orders;
       }

       public function show($id){
           $order = $this->repository->with(['client', 'items', 'cupom'])->find($id);
           $order->items->each(function($item){
               $item->product;
           });
           return $order;
       }

       public function create(){
           $products = $this->productRepository->lists();
           return view('customer.order.create', compact('products'));
       }

       public  function store(Request $request){
           $id = Authorizer::getResourceOwnerID();
           $data = $request->all();
           $clientId = $this->userRepository->find($id)->client->id;
           $data['client_id'] = $clientId;
           $order = $this->orderService->create($data);
           return $this->repository->with(['items'])->find($order->id);
       }

       public function edit($id){
           return view('customer.order.edit', compact('category'));
       }

       public function update(AdminCategoryRequest $request, $id){
           return redirect()->route('customer.order.index');
       }*/
}
