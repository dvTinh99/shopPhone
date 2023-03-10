@extends('admin.master')
@section('content')
<form action="{{route('save2')}}" method="post" enctype="multipart/form-data">
    {{csrf_field()}}
    ID : {{$product->id}}
    <input type="hidden" value ="{{$product->id}}" name ="id">
    <br>
  <div class="form-group">
    <label for="exampleFormControlInput1">Tên </label>
    <input name="name" type="text" class="form-control" id="exampleFormControlInput1" value = "{{$product->name}}">
  </div>
  <div class="form-group">
    <label for="exampleFormControlSelect1">Loại</label>
    <select name="loai" class="form-control" id="exampleFormControlSelect1">
        @foreach($type as $tp)
      <option value="{{$tp->id}}">{{$tp->name}}</option>
      @endforeach
    </select>
  </div>

  <div class="form-group">
    <label for="exampleFormControlTextarea1">Mô tả</label>
    <textarea name="mota" class="form-control" id="exampleFormControlTextarea1" rows="3">{{$product->description}}</textarea>
  </div>

  <div class="form-group">
    <label for="exampleFormControlInput1">Giá gốc </label>
    <input name ="giagoc" type="number" class="form-control" id="exampleFormControlInput1" value ="{{$product->unit_price}}">
  </div>

  <div class="form-group">
    <label for="exampleFormControlInput1">giá khuyến mãi </label>
    <input name ="giakhuyenmai" type="number" class="form-control" id="exampleFormControlInput1" value="{{$product->promotion_price}}">
  </div>

  <div class="form-group">
    <label for="exampleFormControlFile1">Ảnh</label>
    <input name="image" type="file" class="form-control-file" id="exampleFormControlFile1">
  </div>

  <button type="submit" class="btn btn-primary mb-2">Sửa</button>
</form>
@endsection
