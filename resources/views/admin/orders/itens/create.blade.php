@extends('app')

@section('content')
    <div class="container">
        <h3>Novo Item</h3>

        @include('errors._check')

        {{--{!! Form::model(null, ['route' => 'admin.orders.itens.store', $idOrder]) !!}--}}
        {!! Form::model(null, ['route' => ['admin.orders.itens.store', $idOrder]]) !!}

            @include('admin.orders.itens._form')

            <div class="form-group">
                {!! Form::submit('Add Item',['class' => 'btn btn-primary']) !!}
            </div>

        {!! Form::close() !!}

    </div>
@stop()