@extends('app')

@section('content')
    <div class="container">
        <h3>Itens</h3>
        <br>
        <a href="{{route('admin.orders.itens.create', ['id'=> $idOrder])}}" class="btn btn-default">Novo Item</a>

        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Produto</th>
                    <th>Preço</th>
                    <th>Qtd.</th>
                    <th>Ações</th>
                </tr>
            </thead>

            <tbody>
            @foreach($orders as $order)
                <tr>
                    <td>{{$order->id}}</td>
                    <td>{{$order->product->name}}</td>
                    <td>{{$order->price}}</td>
                    <td>{{$order->qtd}}</td>
                    <td>
                        <a href="{{route('admin.orders.itens.destroy', ['id'=> $order->id, 'idOrder'=> $idOrder])}}" class="btn btn-default">Deletar</a>
                    </td>
                </tr>
            @endforeach
            </tbody>

        </table>

    </div>
@stop()