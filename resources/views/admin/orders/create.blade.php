@extends('app')

@section('content')
    <div class="container">
        <h3>Nova Pedido</h3>

        @include('errors._check')

        {!! Form::open(['route' => 'admin.orders.store']) !!}

            @include('admin.orders._form')

            <div class="form-group">
                {!! Form::submit('Criar pedido',['class' => 'btn btn-primary']) !!}
            </div>

        {!! Form::close() !!}

    </div>
@stop()