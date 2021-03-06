<?php

namespace CodeDelivery\Http\Controllers;

use CodeDelivery\Http\Requests;
use CodeDelivery\Http\Requests\AdminOrderItemRequest;
use CodeDelivery\Repositories\OrderItemRepository;
use CodeDelivery\Repositories\OrderRepository;
use CodeDelivery\Repositories\ProductRepository;

class OrderItensController extends Controller
{

    private $repository, $orderRepository, $productRepository;

    public function __construct(OrderItemRepository $repository, OrderRepository $orderRepository, ProductRepository $productRepository)
    {
        $this->repository = $repository;
        $this->orderRepository = $orderRepository;
        $this->productRepository = $productRepository;
    }

    public function index($id)
    {
        $idOrder = $id;
        $orders = $this->repository->findByField('order_id', $id);
        return view('admin.orders.itens.index', compact('orders', 'idOrder'));
    }

    public function create($id)
    {
        $id = $id;
        $idOrder = $id;
        $products = $this->productRepository->lists(['name', 'id']);
        return view('admin.orders.itens.create', compact('products', 'id', 'idOrder'));
    }

    public function store(AdminOrderItemRequest $request, $id)
    {
        $data = $request->all();
        $this->repository->create($data);
        return redirect()->route('admin.orders.itens.index', $id);
    }

    public function destroy($id, $idOrder)
    {
        $this->repository->delete($id);
        return redirect()->route('admin.orders.itens.index', $idOrder);
    }

    public function update(AdminOrderItemRequest $request, $id)
    {
        $data = $request->all();
        $this->repository->update($data, $id);
        return redirect()->route('admin.orders.itens.index');
    }
}
