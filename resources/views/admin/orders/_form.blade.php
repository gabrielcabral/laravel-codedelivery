<div class="form-group">
    {!! Form::label('Client', 'Cliente:') !!}
    {!! Form::select('client_id', $clients, null, ['class' => 'form-control']) !!}
</div>
<div class="form-group">
    {!! Form::label('Deliveryman', 'Entregador:') !!}
    {!! Form::select('user_deliveryman_id', $deliveryman, null, ['class' => 'form-control']) !!}
</div>
<div class="form-group">
    {!! Form::label('Total', 'Total:') !!}
    {!! Form::text('total', null, ['class' => 'form-control']) !!}
</div>
<div class="form-group">
    {!! Form::label('Status', 'Status:') !!}
    {!! Form::select('status', $status, null, ['class' => 'form-control']) !!}
</div>