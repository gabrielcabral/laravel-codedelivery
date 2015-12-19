<?php

namespace CodeDelivery\Http\Controllers;

use CodeDelivery\Repositories\UserRepository;
use CodeDelivery\Repositories\OrderRepository;
use CodeDelivery\Repositories\OrderItemRepository;
use Illuminate\Http\Request;

use CodeDelivery\Http\Requests;
use CodeDelivery\Http\Requests\AdminOrderRequest;
use CodeDelivery\Http\Controllers\Controller;

class OrdersController extends Controller
{

    private $repository, $orderItemRepository, $UserRepository;

    public $status = [
        'Aguardando Pagamento',
        'Entregue ao transportador',
        'Entregue'
    ];

    public function __construct(OrderRepository $repository, OrderItemRepository $orderItemRepository, UserRepository $UserRepository){
        $this->repository = $repository;
        $this->orderItemRepository = $orderItemRepository;
        $this->UserRepository = $UserRepository;
    }

    public  function index(){
        $orders = $this->repository->paginate(5);
        return view('admin.orders.index', compact('orders'));
    }

    public function create(){
        $status = $this->status;
        $clients = $this->UserRepository->lists(['name', 'id']);
        $deliveryman = $this->UserRepository->getDeliveryman();
        return view('admin.orders.create', compact('clients', 'deliveryman', 'status'));
    }

    public  function store(AdminOrderRequest $request){
        $data = $request->all();
        $this->repository->create($data);
        return redirect()->route('admin.orders.index');
    }

    public function edit($id){
        $order = $this->repository->find($id);
        $clients = $this->UserRepository->lists(['name', 'id']);
        $deliveryman = $this->UserRepository->getDeliveryman();
        $status = $this->status;
        return view('admin.orders.edit', compact('order', 'clients', 'deliveryman', 'status'));
    }

    public function update(AdminOrderRequest $request, $id){
        $data = $request->all();
        $this->repository->update($data, $id);
        return redirect()->route('admin.orders.index');
    }
}
