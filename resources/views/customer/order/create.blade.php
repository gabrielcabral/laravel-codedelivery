
@extends('app')

@section('content')
    <div class="container">
        <h3>Novo Pedido</h3>
        <br>
        @include('errors._check')

        {!! Form::open(['route'=>'customer.order.store'])!!}
        <div class="form-group">
            <label>Total: </label>
            <p id="total"></p>
            <a href="#" id="btnNewItem" class="btn btn-default">Novo Item</a>

            <table class="table table-striped table-hover" id="tabela_item">
                <thead>
                <tr>
                    <th>Produto</th>
                    <th>Quantidade</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>
                        <select class="form-control" name="items[0][product_id]">
                            @foreach($products as $product)
                                <option value="{{$product->id}}" data-price="{{$product->price}}">{{$product->name}}
                                    --- {{$product->price}}</option>
                            @endforeach
                        </select>
                    </td>
                    <td>
                        {!! Form::text('items[0][qtd]', 1, ['class'=>'form-control']) !!}
                    </td>
                </tr>
                </tbody>
            </table>
        </div>

        <div class="form-group">
            {!! Form::submit('Criar pedido', ['class'=>'btn btn-primary']) !!}
        </div>
        {!! Form::close() !!}

    </div>
@endsection

@section('post-script')
    <script>
        $('#btnNewItem').click(function () {
            var row = $('#tabela_item tbody > tr:last'),
                    newRow = row.clone(),
                    length = $("#tabela_item tbody tr").length;
            newRow.find('td').each(function () {
                var td = $(this),
                        input = td.find('input,select'),
                        name = input.attr('name');
                input.attr('name', name.replace((length - 1) + "", length + ""));
            });
            newRow.find('input').val(1);
            newRow.insertAfter(row);
            calculateTotal();
        });
        $(document.body).on('click', 'select', function () {
            calculateTotal();
        });
        $(document.body).on('blur', 'input', function () {
            calculateTotal();
        });
        function calculateTotal() {
            var total = 0,
                    trLen = $('#tabela_item tbody tr').length,
                    tr = null, price, qtd;
            for (var i = 0; i < trLen; i++) {
                tr = $('#tabela_item tbody tr').eq(i);
                price = tr.find(':selected').data('price');
                qtd = tr.find('input').val();
                total += price * qtd;
            }
            $('#total').html(total);
        }
    </script>
@endsection
