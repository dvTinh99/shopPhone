@extends('master')
@section('content')
<div class="inner-header">
		<div class="container">
			<div class="pull-left">
				<h6 class="inner-title">Login</h6>
			</div>
			<div class="pull-right">
				<div class="beta-breadcrumb">
					<a href="index.html">Home</a> / <span>Login</span>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>

	<div class="container">
		<div id="content">

			<form action="{{route('login')}}" method="post" class="beta-form-checkout">
            <input type="hidden" name="_token" value="{{csrf_token()}}">
				<div class="row">
                @if(Session::has('flag'))
                <div class="alert alert-{{Session::get('flag')}}">{{Session::get('message')}}</div>
                @endif
                    <div class="col-sm-3"></div>

					<div class="col-sm-6">
						<h4>Login</h4>
						<div class="space20">&nbsp;</div>


						<div class="form-block">
							<label for="email">Email address*</label>
							<input type="text" id="email" name="email" required>
						</div>
						<div class="form-block">
							<label for="phone">Password*</label>
							<input type="text" id="phone" name="pass" required>
						</div>
						<div class="form-block">
							<button type="submit" class="btn btn-primary">Login</button>
						</div>
					</div>
					<div class="col-sm-3"></div>
				</div>
			</form>
		</div> <!-- #content -->
    </div> <!-- .container -->

@endsection
