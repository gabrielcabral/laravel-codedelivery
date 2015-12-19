@extends('app')

@section('content')
    <div class="container">
        <h3>Cupom</h3>
        <br>
        <a href="{{route('admin.cupoms.create')}}" class="btn btn-default">Novo Cupom</a>

        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Código</th>
                    <th>Valor</th>
                    <th>Ações</th>
                </tr>
            </thead>

            <tbody>
            @foreach($cupoms as $cupom)
                <tr>
                    <td>{{$cupom->id}}</td>
                    <td>{{$cupom->code}}</td>
                    <td>{{$cupom->value}}</td>
                    <td>
                        <a href="{{route('admin.cupoms.edit', ['id'=> $cupom->id])}}" class="btn btn-default">Editar</a>
                    </td>
                </tr>
            @endforeach
            </tbody>

        </table>

        {!! $cupoms->render() !!}

    </div>
@stop()