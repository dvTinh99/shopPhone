
@extends('master')
@section('content')
<div class="inner-header">
		<div class="container">
			<div class="pull-left">
				<h6 class="inner-title">Checkout</h6>
			</div>
			<div class="pull-right">
				<div class="beta-breadcrumb">
					<a href="{{route('trang-chu')}}">Home</a> / <span>Checkout</span>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>

	<div class="container">
		<div id="content">

			<form action="{{route('dathang')}}" method="post" class="beta-form-checkout">
			<input type="hidden" name ="_token" value="{{csrf_token()}}">
			<div class="row">@if(Session::has('thongbao')){{Session::get('thongbao')}}@endif</div>
				<div class="row">
					<div class="col-sm-6">
						<h4>Checkout</h4>
						<div class="space20">&nbsp;</div>

						<div class="form-block">
							<label for="name">Full Name*</label>
							<input type="text" id="name" name ="name" placeholder="Họ tên" required>
						</div>
						<div class="form-block">
							<label>Gender </label>
							<input id="gender" type="radio" class="input-radio" name="gender" value="nam" checked="checked" style="width: 10%"><span style="margin-right: 10%">Male</span>
							<input id="gender" type="radio" class="input-radio" name="gender" value="nữ" style="width: 10%"><span>Female</span>

						</div>

						<div class="form-block">
							<label for="email">Email*</label>
							<input type="email" id="email" name="email" required placeholder="expample@gmail.com">
						</div>

						<div class="form-block">
							<label for="adress"><Address></Address>*</label>
							<input type="text" id="address" name="address" placeholder="Street Address" required>
						</div>


						<div class="form-block">
							<label for="phone">Phone*</label>
							<input type="text" id="phone" name="phone" required>
						</div>

						<div class="form-block">
							<label for="notes">Note</label>
							<textarea id="notes" name ="note"></textarea>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="your-order">
							<div class="your-order-head"><h5>Your Order</h5></div>
							<div class="your-order-body" style="padding: 0px 10px">
								<div class="your-order-item">
									<div>
                                @if(Session::has('cart'))
								@foreach($product_cart as $product)
								<!--  one item	 -->
                                <div class="media">
											<img width="25%" src="source/image/product/{{$product['item']['image']}}" alt="" class="pull-left">
											<div class="media-body">
												<p class="font-large">{{number_format($product['item']['unit_price'])}}</p>
											</div>
								</div>
									<!-- end one item -->
								@endforeach
								@endif

									</div>
									<div class="clearfix"></div>
								</div>
								<div class="your-order-item">
									<div class="pull-left"><p class="your-order-f18">Total:</p></div>
									<div class="pull-right"><h5 class="color-black">@if(Session::has('cart')){{number_format(Session('cart')->totalPrice)}} @else 0 @endif</h5></div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="your-order-head"><h5>Payment</h5></div>

							<div class="your-order-body">
								<ul class="payment_methods methods">
									<li class="payment_method_bacs">
										<input id="payment_method_bacs" type="radio" class="input-radio" name="payment_method" value="COD" checked="checked" data-order_button_text="">
										<label for="payment_method_bacs">Payment on delivery </label>
										<div class="payment_box payment_method_bacs" style="display: block;">
											The store will send the goods to your address, you see the goods and then pay the delivery staff
										</div>
									</li>

									<li class="payment_method_cheque">
										<input id="payment_method_cheque" type="radio" class="input-radio" name="payment_method" value="ATM" data-order_button_text="">
										<label for="payment_method_cheque">Transfer </label>
										<div class="payment_box payment_method_cheque" style="display: none;">
											Transfer money to the following account:
											<br>- Number Account: 123 456 789
											<br>- Account owner: Nguyễn A
											<br>- Name: Ngân hàng ACB, Chi nhánh TPHCM
										</div>
									</li>

								</ul>
							</div>

							<div class="text-center">
								<button type="submit" class="beta-btn primary" href="#">DONE
									<i class="fa fa-chevron-right"></i>
								</button>
							</div>
						</div> <!-- .your-order -->
					</div>
				</div>
			</form>
		</div> <!-- #content -->
    </div> <!-- .container -->

@endsection
