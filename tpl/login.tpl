
<!-- Begin Row -->
<div class="col-md-12">

	<div class="panel panel-default">
		<div class="panel-heading">
			<h3 class="">Member Login</h3>
		</div>
		<div class="panel-body">

			<div class="row">
				<div class="new_member_account_card col-md-6"> <!-- Begin of New Member Account Card -->
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4>Create A New Member Account</h4>
						</div>
						<div class="panel-body">
							<p>To gain access to the Slab Market you need to setup an account.</p>
							<p>Any information received from our users will not be sold, shared, or rented to others in ways different from those disclosed in our Privacy Policy.</p>
							<div style="text-align: center;">
								<img src="{$_upDir}img/key.png" style="margin: 0 auto;">
							</div>
							<div class="buyer_seller_buttons"> <!-- added this class -->
								<a class="btn btn-default btn-success" href="{$_upDir}registration/buyer">Create a Buyer Account</a>
								<a class="btn btn-default btn-danger" href="{$_upDir}registration/seller">Create a Seller Account</a>
							</div>
							<p>It will allow you to use all of our online portals with just one account. Registering will also simplify the purchasing process in our online store.</p>
						</div>
					</div>
				</div> <!-- End of New Member Account Card -->
				<div class="col-md-6">
					<div class="row">
						<div class="sign_in_info_card col-md-12"> <!-- Begin of Sign In Info Card -->
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4>Sign In</h4>
								</div>
								<div class="panel-body">
									<p>Please enter your e-mail address and password, then click "Login". You should have cookies enabled in your browser for successfull login.</p>
									{include file='pagemessage.tpl'}
									<form method="POST" action="{$_upDir}login">
										<input type="hidden" name="action" value="login">
										<div class="form-group">
											<label for="email1">Email*</label>
											<input type="email" required="true" class="form-control" id="email1" size="35" name="email" value="{$email}" maxlength="40">
										</div>
										<div class="form-group">
											<label for="password">Password*</label>
											<input type="password" required="true"  class="form-control" size="35" name="password" maxlength="40" id="password">
										</div>
										<div class="form-group">
											<div class="checkbox">
												<label>
													<input type="checkbox" name="remember" value="1"> Remember me
												</label>
											</div>
										</div>
										<button type="submit" class="btn btn-default pull-right">Login</button>
									</form>
								</div>
							</div>
						</div> <!-- End of Sign In Info Card -->

						<div class="forgot_password_card col-md-12"> <!-- Begin of Forgot Password Card -->
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4>Forgot Your Password</h4>
								</div>
								<div class="panel-body">
									<p>Please enter your e-mail address. Your password will be sent to you in a few minutes.</p>
									<form method="POST" action="{$_upDir}login">
										<input type="hidden" name="action" value="send_password">
										<div class="form-group">
											<label for="email2">Email*</label>
											<input type="email" required="true" class="form-control" id="email2" size="35" name="email" maxlength="40">
										</div>
										<button type="submit" class="btn btn-default pull-right">Send</button>
									</form>
								</div>
							</div>
						</div> <!-- End of Forgot Password Card -->

					</div>

				</div>
			</div>
		</div>
	</div> <!-- End of Panel Default -->
</div>
<!-- End Row -->
