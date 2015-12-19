<?php

namespace CodeDelivery\Http\Controllers;

use CodeDelivery\Repositories\CupomRepository;
use Illuminate\Http\Request;

use CodeDelivery\Http\Requests;
use CodeDelivery\Http\Requests\AdminCupomRequest;
use CodeDelivery\Http\Controllers\Controller;

class CupomsController extends Controller
{

    private $repository;

    public function __construct(CupomRepository $repository){
        $this->repository = $repository;
    }

    public  function index(){
//        $nome = "Allan";
//        $linguagens = ['PHP', 'Java', 'Python'];
//        return view('admin.cupoms.index', compact('nome', 'linguagens'));

        $cupoms = $this->repository->paginate(5);

        return view('admin.cupoms.index', compact('cupoms'));
    }

    public function create(){
        return view('admin.cupoms.create');
    }

    public  function store(AdminCupomRequest $request){

        $data = $request->all();

        $this->repository->create($data);

        return redirect()->route('admin.cupoms.index');
//        dd($request->all());
    }

    public function edit($id){

        $category = $this->repository->find($id);

        return view('admin.cupoms.edit', compact('category'));
    }

    public function update(AdminCategoryRequest $request, $id){

        $data = $request->all();

        $this->repository->update($data, $id);

        return redirect()->route('admin.cupoms.index');
    }
}
