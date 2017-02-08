<div class="col-sm-12">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h3>Account Verification</h3>
		</div>
		<div class="panel-body">
			{if $action=='resend'}

				<div class="alert alert-dismissible alert-success">
				  <button type="button" class="close" data-dismiss="alert">&times;</button>
				  <strong>Well done!</strong> Email has been sent.
				</div>
				<br>
			{/if}
			{if $action=='verify'}
				{if $err==0}
					<div class="alert alert-dismissible alert-success">
					  <button type="button" class="close" data-dismiss="alert">&times;</button>
					  <strong>Well done!</strong> Email has been verified.
					</div>
					<br />
					<a href="{$_upDir}account">Continue</a>
				{/if}
				{if $err==1}
					<div class="alert alert-dismissible alert-danger">
					  <button type="button" class="close" data-dismiss="alert">&times;</button>
					  <strong>Oh snap!</strong> Something went wrong.
					</div>
				{/if}
				<br /><br />
			{else}
				<div style="text-align:center;padding:40px 0 80px 0;margin:0;">
				<p style="font:12px Arial;text-align:center;padding:20px;line-height:20px;">In order to verify that the email address associated with your account is correct,
				we have sent an email message to <b>{$email}</b>. To activate your Slabmarket account, please access your email and click on the link provided.</p>
				<br />
				<a href="{$_upDir}verification/resend" class="btn btn-success">Re-Send Verification Email</a>
				</div>
			{/if}
			<br /><br />
			{if $msgCode!=''}
				msgCode=1<br />
				proceed to place an order<br />
			{/if}
		</div>
	</div>
</div>
