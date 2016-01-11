@extends('app')

@section('content')
    <div class="container">
        <h3>Novo Pedido</h3>

        @include('errors._check')
        <div class="container">
        {!! Form::open(['route' => 'admin.orders.store']) !!}
            <div class="form-group">
                <label>Total: </label>

                <p id="total"></p>
                <a href="#" class="btn btn-default">novo item</a>
            </div>


            @include('admin.orders._form')

            <div class="form-group">
                {!! Form::submit('Criar pedido',['class' => 'btn btn-primary']) !!}
            </div>

        {!! Form::close() !!}
        </div>

    </div>
@stop()