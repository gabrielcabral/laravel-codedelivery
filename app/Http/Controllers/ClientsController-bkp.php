<?php

namespace CodeDelivery\Http\Controllers;

use CodeDelivery\Repositories\ClientRepository;
    use CodeDelivery\Repositories\UserRepository;
use Illuminate\Http\Request;

use CodeDelivery\Http\Requests;
use CodeDelivery\Http\Requests\AdminClientRequest;
use CodeDelivery\Http\Controllers\Controller;

class clientsController extends Controller
{

    private $repository, $userRepository;

    public function __construct(ClientRepository $repository, UserRepository $userRepository){
        $this->repository = $repository;
        $this->userRepository = $userRepository;
    }

    public  function index(){
        $clients = $this->repository->paginate(5);
        return view('admin.clients.index', compact('clients'));
    }

    public function create(){
        $users = $this->userRepository->lists(['name', 'id']);
        return view('admin.clients.create', compact('users'));
    }

    public  function store(AdminClientRequest $request){
        $data = $request->all();
        $this->repository->create($data);
        return redirect()->route('admin.clients.index');
    }

    public function edit($id){
        $client = $this->repository->find($id);
        $users = $this->userRepository->lists(['name', 'id']);
        return view('admin.clients.edit', compact('client', 'users'));
    }

    public function update(AdminClientRequest $request, $id){
        $data = $request->all();
        $this->repository->update($data, $id);
        return redirect()->route('admin.clients.index');
    }
}
