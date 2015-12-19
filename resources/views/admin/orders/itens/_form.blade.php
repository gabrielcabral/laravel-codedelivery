<div class="form-group">
    <!--{!! Form::label('Order', 'Pedido:') !!}-->
    {!! Form::input('hidden', 'order_id', $id, ['class' => 'form-control']) !!}

</div>
<div class="form-group">
    {!! Form::label('Product', 'Produto:') !!}
    {!! Form::select('product_id', $products, null, ['class' => 'form-control']) !!}
</div>
<div class="form-group">
    {!! Form::label('Price', 'Preço:') !!}
    {!! Form::text('price', null, ['class' => 'form-control']) !!}
</div>
<div class="form-group">
    {!! Form::label('Qtd', 'Qtd:') !!}
    {!! Form::text('qtd', null, ['class' => 'form-control']) !!}
</div>