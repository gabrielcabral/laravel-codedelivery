@extends('app')

@section('content')
    <div class="container">
        <h3>Produtos</h3>
        <br>
        <a href="{{route('admin.products.create')}}" class="btn btn-default">Novo Produto</a>

        <table class="table ">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Produto</th>
                    <th>Categoria</th>
                    <th>Preço</th>
                    <th>Ações</th>
                </tr>
            </thead>

            <tbody>
            @foreach($products as $product)
                <tr>
                    <td>{{$product->id}}</td>
                    <td>{{$product->name}}</td>
                    <td>{{$product->category->name}}</td>
                    <td>R${{$product->price}}</td>
                    <td>
                        <a href="{{route('admin.products.edit', ['id'=> $product->id])}}" class="btn btn-warning"> Editar</a>
                        <a href="{{route('admin.products.destroy', ['id'=> $product->id])}}" class="btn btn-danger">Remover</a>
                    </td>
                </tr>
            @endforeach
            </tbody>

        </table>

        {!! $products->render() !!}

    </div>
@stop()