<script type="text/javascript" src="{$_upDir}core/js/passwordStrength/meter.js"></script>
<script type="text/javascript" src="{$_upDir}core/js/formValidate/formValidate.js"></script>
<script type="text/javascript" src="{$_upDir}xml_js/registration.js"></script>
<!-- Begin Row -->
<div class="col-md-12">

	<div class="panel panel-default">
		<div class="panel-heading">
			{if $accountType==1}
			<h3 class="">Create Seller Account</h3>
			{elseif $accountType==0}
			<h3>Create Buyer Account</h3>
			{/if}
		</div>
		<div class="panel-body">

			<div class="row">
				<div class="new_member_account_card col-md-6"> <!-- Begin of New Member Account Card -->
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4>Required information for Slabmarket account</h4>
						</div>
						<div class="panel-body">

							<form action="{$_upDir}registration" method="POST" id="fRegister" onsubmit="return checkForm();">
									<input type="hidden" name="action" value="register">
									<input type="hidden" name="alastid" value="{$_alastid}">

									<div id="registerError" style="display: none;" class="alert alert-dismissible alert-danger">
									  <button type="button" class="close" data-dismiss="alert">&times;</button>
									  <strong>Oh snap!</strong> <a href="#" class="alert-link">Change a few things up</a> and try submitting again.
									</div>
								<div class="form-group">
									<label for="email1">Email address*</label>
									<input type="email" required="true" class="form-control" id="email1" name="email1" value="{$data.email1}" size="40" maxlength="80">
								</div>
								<div class="form-group">
									<label for="email2">Confirm email address*</label>
									<input type="email" required="true" class="form-control" id="email2" name="email2" value="{$data.email2}" size="40" maxlength="80">
								</div>
								<div class="form-group">
									<p>Minimum of 6 characters including digits.</p>
								</div>
								<div class="form-group">
									<label for="pass1">Password*</label>
									<input type="password" required="true" class="form-control" name="pass1" id="pass1" value="{$data.pass1}" size="40" maxlength="20" onkeyup="updateStrength(this.value);" onblur="updateStrength(this.value);"">

								</div>
								<div class="form-group">

									<img src="{$_upDir}core/js/passwordStrength/img/begin.gif" id="strength" border="0" style="object-fit: contain;">
								</div>
								<div class="form-group">
									<label for="pass2">Confirm password*</label>
									<input type="password" required="true" class="form-control" name="pass2" id="pass2" value="{$data.pass2}" size="40" maxlength="20">
								</div>
								<div class="form-group">
									<div class="checkbox">
										<label>
											<input type="checkbox" name="remember" value="1"> Remember me on this computer.<br>(*required fields).
										</label>
									</div>
								</div>
								<div class="form-group">

									<img src="{$_upDir}{$captchaArr.dir}{$captchaArr.fileName}" style="object-fit: contain;">
								</div>
								<div class="form-group">
									<label for="code">Word Verification:</label>
									<input type="password" id="captchaCode" name="{$captchaArr.formName}" size="15" maxlength="4" class="form-control">
								</div>
								<div class="form-group">
									<p><span style="color:#555d69;font-size:11px;">By clicking on 'I accept' below you are agreeing to the <a href="">Terms of Service</a> above and the <a href="">Privacy Policy</a>.</span>
									</p>
								</div>

								<input type="submit" name="submit" class="btn btn-primary pull-right" value="I accept. Create my account">
							</form>
						</div>
					</div>
				</div> <!-- End of New Member Account Card -->
				<div class="col-md-6">
					<div class="row">
						<div class="sign_in_info_card col-md-12"> <!-- Begin of Sign In Info Card -->
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4>Already have an account?</h4>
								</div>
								<div class="panel-body">
									<p style="text-align:center;font: 14px Arial;padding:30px;margin:0;">If you already have a Slabmarket Account, you can sign in <a href="{$_upDir}login">here</a>.</p>
								</div>
							</div>
						</div> <!-- End of Sign In Info Card -->


					</div>

				</div>
			</div>
		</div>
	</div> <!-- End of Panel Default -->
</div>
<!-- End Row -->

{literal}
<script language="javascript">
{/literal}
{if $data.pass1!=''}{literal}
updateStrength('{/literal}{$data.pass1}{literal}');{/literal}
{/if}
{if $errMsg!=''}{literal}
showError('{/literal}{$errMsg}{literal}');{/literal}
{/if}
{literal}
</script>
{/literal}
