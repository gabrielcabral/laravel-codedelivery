<?php

namespace CodeDelivery\Http\Controllers\Api\Deliveryman;

use CodeDelivery\Http\Controllers\Controller;
use CodeDelivery\Http\Requests;

/**
 * Class DeliverymanCheckoutController
 * @package CodeDelivery\Http\Controllers\Api\Deliveryman
 */
class DeliverymanCheckoutController extends Controller
{

    /**
     * @var OrderRepository
     */
    /**
     * @var OrderRepository|UserRepository
     */
    /**
     * @var OrderRepository|ProductRepository|UserRepository
     */
    private $repository, $userRepository;

    /**
     * DeliverymanCheckoutController constructor.
     * @param OrderRepository $repository
     * @param UserRepository $userRepository
     * @param ProductRepository $productRepository
     * @param OrderService $orderService
     */
    public function __construct(
        OrderRepository $repository,
        UserRepository $userRepository,
        OrderService $orderService
    )
    {
         $this->repository = $repository;
         $this->userRepository = $userRepository;
         $this->orderService = $orderService;
    }

    /**
     * @return mixed
     */
    public function index()
    {
         $id = Authorizer::getResourceOwnerID();
        $orders = $this->repository->with(['items'])->scopeQuery(
            function ($query) use ($id) {
                return $query->where('user_deliveryman_id', '=', $id);
            }
        )->paginate();
        return $orders;
    }

    /**
     * @param $id
     * @return mixed
     */
    public function show($id)
    {
         $idDeliveryman = Authorizer::getResourceOwnerID();
         return $this->repository->getByIdAndDeliveryman($id, $idDeliveryman);
    }

    /**
     * @param Request $request
     * @param $id
     * @return mixed
     */
    public function updateStatus(Request $request, $id)
    {
         $idDeliveryman = Authorizer::getResourceOwnerID();
         $order = $this->orderService->updateStatus($id, $idDeliveryman, $request->get('status'));
        if ($order != false) {
            return $order;
        } else {
            abort(400, 'Order não encontrado');
        }

    }
}