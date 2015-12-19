@extends('app')

@section('content')
    <div class="container">
        <h3>Clientes</h3>
        <br>
        <a href="{{route('admin.clients.create')}}" class="btn btn-default">Nova Cliente</a>

        <table class="table ">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>Ações</th>
                </tr>
            </thead>

            <tbody>
            @foreach($clients as $client)
                <tr>
                    <td>{{$client->id}}</td>
                    <td>{{$client->user->name}}</td>
                    <td>
                        <a href="{{route('admin.clients.edit', ['id'=> $client->id])}}" class="btn btn-warning">Editar</a>
                    </td>
                </tr>
            @endforeach
            </tbody>

        </table>

        {!! $clients->render() !!}

    </div>
@stop()