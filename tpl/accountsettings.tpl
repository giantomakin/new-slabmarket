{assign var='title' value='General account information'}
{assign var='menu'  value=1}
<div class="col-md-12"> <!-- Begin Column -->
	<div class="panel panel-default panel_with_tabs">
		<div class="panel-heading">
			<h3>Account #{$userid}</h3>
		</div>
		<div class="panel-body">

			<div class="btn-group btn-group-justified" style="padding:20px">
				<div class="btn-group" role="group">
					<a type="button" class="btn btn-default" href="{$_upDir}account" role="button">Account Info</a>
				</div>
				<div class="btn-group" role="group">
					<a type="button" class="btn btn-default" href="{$_upDir}accountInventory" role="button">Inventory</a>
				</div>
				<div class="btn-group" role="group">
					<a type="button" class="btn btn-default active" href="{$_upDir}accountOrders" role="button">Orders</a>
				</div>
			</div>

			<div class="row" style="padding:20px">
				<div class="col-md-12">
					{if $msg!=''}
					<div class="alert alert-dismissible alert-danger">
						<button type="button" class="close" data-dismiss="alert">×</button>
						<strong>Oh snap!</strong> {$msg}.
					</div>

					</div>
					{/if}

					<div id="log_res" class="alert alert-dismissible alert-info" style="display:none">
						<button type="button" class="close" data-dismiss="alert">×</button>
						<strong>Oh snap!</strong> Updating Data.
					</div>
					<br />
				</div>
				<div class="col-md-6">
					<h3 class="page-header">
					    Clients Reviews
					</h3>
					<form action="accountSettings" method="post" name="emailchange" id="emailchange">
					<div class="form-group">
						<label for="currentemail">Current Email*</label>
						<input type="email" id="currentemail" name="currentemail" class="form-control">
					</div>
					<div class="form-group">
						<label for="password">Password*</label>
						<input type="password" id="password" name="password" class="form-control">
					</div>
					<div class="form-group">
						<label for="newemail">New Email*</label>
						<input type="text" id="newemail" name="newemail" class="form-control">
					</div>
					<div class="form-group">
						<label for="newemail2">Re-enter New Email*</label>
						<input type="text" id="newemail2" name="newemail2" class="form-control">
					</div>
					<input type="submit" name="emailchange" value="SUBMIT" class="bt_submit btn btn-primary form-control">

					</form>
				</div>
				<div class="col-md-6">
					<h3 class="page-header">
					    Change password
					</h3>
					<form action="accountSettings" method="post" name="passwordchange" id="passwordchange">
					<div class="form-group">
						<label for="oldpassword">Current Password*</label>
						<input type="password" id="oldpassword" name="oldpassword" class="form-control">
					</div>
					<div class="form-group">
						<label for="newpassword">New Password*</label>
						<input type="password" id="newpassword" name="newpassword" class="form-control">
					</div>
					<div class="form-group">
						<label for="newpassword2">Confirm&nbsp;New&nbsp;Password*</label>
						<input type="text" id="newpassword2" name="newpassword2" class="form-control">
					</div>
					<input type="submit" name="passwordchange" value="SUBMIT" class="bt_submit btn btn-primary form-control">
					</form>`
				</div>
			</div>


		</div>
	</div>
</div> <!-- End Column -->
</div>

<!-- {include file='account_end.tpl'} -->
