<?php

namespace CodeDelivery\Services;

use CodeDelivery\Models\Order;
use CodeDelivery\Repositories\CupomRepository;
use CodeDelivery\Repositories\OrderRepository;
use CodeDelivery\Repositories\ProductRepository;
use Illuminate\Support\Facades\DB;

/**
 * Class OrderService
 * @package CodeDelivery\Services
 */
class OrderService
{
    /**
     * @var OrderRepository
     */
    /**
     * @var CupomRepository|OrderRepository
     */
    /**
     * @var CupomRepository|OrderRepository|ProductRepository
     */
    /**
     * @var CupomRepository|OrderRepository|ProductRepository|DB
     */
    private $repository, $cupomRepository, $productRepository, $db;

    /**
     * OrderService constructor.
     * @param OrderRepository $repository
     * @param CupomRepository $cupomRepository
     * @param ProductRepository $productRepository
     * @param DB $db
     */
    public function __construct(OrderRepository $repository,
                                CupomRepository $cupomRepository,
                                ProductRepository $productRepository,
                                DB $db
    )
    {
        $this->repository = $repository;
        $this->cupomRepository = $cupomRepository;
        $this->productRepository = $productRepository;
        $this->db = $db;
    }

    /**
     * @param array $data
     * @return mixed
     * @throws \Exception
     */
    public function create(array $data)
    {
        DB::beginTransaction();
        //        $this->db::
        try{
            $data['status'] = 0;
            if (isset($data['cupom_code'])) {
                $cupom = $this->cupomRepository->findByField('code', $data['cupom_code'])->first();
                $data['cupom_id'] = $cupom->id;
                $cupom->used = 1;
                $cupom->save();
                unset($data['cupom_code']);
            }

            $items = $data['items'];
            unset($data['items']);

            $order = $this->repository->create($data);
            $total = 0;
            foreach($items as $item){
                $item['price'] = $this->productRepository->find($item['product_id'])->price;
                $order->items()->create($item);
                $total += $item['price'] * $item['qtd'];
            }

            $order->total = $total;
            if (isset($cupom)) {
                $order->total = $total - $cupom->value;
            }
            $order->save();
            DB::commit();
            return $order;
        } catch(\Exception $e){
            DB::rollback();
            throw $e;
        }
    }

    /**
     * @param $id
     * @param $idDeliveryman
     * @param $status
     * @return bool
     */
    public function updateStatus($id, $idDeliveryman, $status)
    {
        $order = $this->repository->getByIdAndDeliveryman($id, $idDeliveryman);
        if ($order instanceof Order) {
            $order->status = $status;
            $order->save();
            return $order;
        }
        return false;
    }

    /**
     * @param array $data
     * @param $id
     */
    public function update(array $data, $id)
    {
        $this->clientRepository->update($data, $id);

        $userId = $this->clientRepository->find($id, ['user_id'])->user_id;
        $this->userRepository->update($data['user'], $userId);
    }
}