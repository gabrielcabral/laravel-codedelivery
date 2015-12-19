@extends('app')

@section('content')
    <div class="container">
        <h3>Nova Cliente</h3>

        @include('errors._check')

        {!! Form::open(['route' => 'admin.clients.store']) !!}

            @include('admin.clients._form')

            <div class="form-group">
                {!! Form::submit('Criar cliente',['class' => 'btn btn-primary']) !!}
            </div>

        {!! Form::close() !!}

    </div>
@stop()