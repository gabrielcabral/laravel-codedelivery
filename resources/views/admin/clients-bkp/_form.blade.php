<div class="form-group">
    {!! Form::label('User', 'Usuário:') !!}
    {!! Form::select('user_id', $users, null, ['class' => 'form-control']) !!}
</div>
<div class="form-group">
    {!! Form::label('Phone', 'Telefone:') !!}
    {!! Form::text('phone', null, ['class' => 'form-control']) !!}
</div>
<div class="form-group">
    {!! Form::label('Address', 'Endereço:') !!}
    {!! Form::text('address', null, ['class' => 'form-control']) !!}
</div>
<div class="form-group">
    {!! Form::label('city', 'City:') !!}
    {!! Form::text('city', null, ['class' => 'form-control']) !!}
</div>
<div class="form-group">
    {!! Form::label('State', 'Estado:') !!}
    {!! Form::text('state', null, ['class' => 'form-control']) !!}
</div>
<div class="form-group">
    {!! Form::label('Zipcode', 'CEP:') !!}
    {!! Form::text('zipcode', null, ['class' => 'form-control']) !!}
</div>
