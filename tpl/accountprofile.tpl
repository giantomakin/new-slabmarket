<script type="text/javascript" src="{$_upDir}core/js/formValidate/formValidate.js"></script>
<script type="text/javascript" src="{$_upDir}xml_js/accountSellerEdit.js"></script>
<script type="text/javascript" src="{$_upDir}xml_js/accountWarehouseEdit.js"></script>

{assign var='title' value='Edit Profile Information'}
{assign var='menu'  value=3}
<!-- {include file='account_start.tpl'} -->
<div class="col-sm-12"> <!-- Begin Column -->
	<div class="panel panel-default panel_with_tabs">
		<div class="panel-heading">
			<h3>Account #{$userid}</h3>
		</div>
		<div class="panel-body">

			<div class="btn-group btn-group-justified" style="padding:20px">
				<div class="btn-group" role="group">
					<a type="button" class="btn btn-default active" href="{$_upDir}account" role="button">Account Info</a>
				</div>	{if $_userInfo.type==1}
				<div class="btn-group" role="group">
					<a type="button" class="btn btn-default" href="{$_upDir}accountInventory" role="button">Inventory</a>
				</div>	{/if}
				<div class="btn-group" role="group">
					<a type="button" class="btn btn-default" href="{$_upDir}accountOrders" role="button">Orders</a>
				</div>
			</div>

			{if $msg!=''}


			<div class="alert alert-dismissible alert-danger">
									<button type="button" class="close" data-dismiss="alert">×</button>
									<strong>Oh snap!</strong> {$msg}.
								</div>
			{/if}



			{if $data.id_slab_core_user==''}


				<div class="alert alert-dismissible alert-success">
									<button type="button" class="close" data-dismiss="alert">×</button>
									<strong>Oh snap!</strong> Please fill out the company information to get full access to the Seller's Account.
								</div>
			{/if}


			<div id="divError" style="display: none;" class="alert alert-dismissible alert-success"></div>

			{if $_userInfo.type==1}

			<form action="{$_upDir}accountProfile" style="padding:20px" method="POST" id="fEditSeller" onsubmit="return checkForm();">
				<input type="hidden" name="action" value="editSeller">
				<input type="hidden" name="id" value="{$data.id_slab_core_user}">
				<input type="hidden" name="referrer" value="{$referrer}">
				<input type="hidden" name="alastid" value="{$_alastid}">

				<div class="form-group">
					<label for="name">Company name*</label>
					<input class="form-control" id="name"  type="text" name="name" size="40" maxlength="40" value="{$data.name}">
				</div>
				<div class="form-group">
					<label for="port_name">Port name*</label>
					<input class="form-control" id="port_name"  input type="text" name="port_name" size="40" maxlength="40" value="{$data.name}">
				</div>
				<div class="form-group">
					<label for="contact">Contact person*</label>
					<input class="form-control" id="contact"  type="text" name="contact_person" size="40" maxlength="40" value="{$data.contact_person}">
				</div>
				<div class="form-group">
					<label for="country">Country*</label>
					{assign var='countryCode' value=$arrSlabUser.country}{$countryArr[$countryCode]}
					<select class="form-control" id="country" name="country"><option name="0"></option>{html_options options=$countryArr selected=$data.country}
					</select>
				</div>
				<div class="form-group">
					<label for="region">Region*</label>
					<input class="form-control" id="region" type="text" name="region" size="40" maxlength="40" value="{$data.region}">
				</div>
				<div class="form-group">
					<label for="city">City*</label>
					<input class="form-control" id="city" type="text" name="city" size="40" maxlength="40" value="{$data.city}">
				</div>
				<div class="form-group">
					<label for="postal">Postal Code*</label>
					<input class="form-control" id="postal" type="text" name="postal_code" size="40" maxlength="40" value="{$data.postal_code}">
				</div>
				<div class="form-group">
					<label for="addr1">Address line 1*</label>
					<input class="form-control" id="addr1" type="text" name="address1" size="40" maxlength="40" value="{$data.address1}">
				</div>
				<div class="form-group">
					<label for="addr2">Address line 2*</label>
					<input class="form-control" id="addr2" type="text" name="address2" size="40" maxlength="40" value="{$data.address2}">
				</div>
				<div class="form-group">
					<label for="phone">Primary phone*</label>
					<input class="form-control" id="phone" type="text" name="phone2" size="40" maxlength="40" value="{$data.phone2}">
				</div>
				<div class="form-group">
					<label for="alternative">Alternative phone</label>
					<input class="form-control" id="alternative" type="text" name="phone2" size="40" maxlength="40" value="{$data.phone2}">
				</div>
				<div class="form-group">
					<label for="fax">Fax</label>
					<input class="form-control" id="fax" type="text" name="fax" size="40" maxlength="40" value="{$data.fax}">
				</div>
				<div class="row">
					<div class="col-md-12">

						{if $data.id_slab_core_user!=''}
						<input type="submit" name="submit" class="btn btn-default" value="Update profile">
						{else}
						<input type="submit" name="submit" class="btn btn-default" value="I accept. Update profile">
						{/if}
						<input type="button" name="cancel" class="btn btn-default" value="cancel" onclick="cancelWarehouseEdit();">

					</div>
				</div>

			</form>

			{else}


			<form action="{$_upDir}accountProfile" method="POST">
				<input type="hidden" name="alastid" value="{$_alastid}">
				<input type="hidden" name="action" value="editBuyer">
				<input type="hidden" name="id" value="{$data.id_slab_core_user}">


				<div class="form-group">
					<label for="name">Company name*</label>
					<input class="form-control" id="name"  type="text" name="name" size="40" maxlength="40" value="{$data.name}">
				</div>
				<div class="form-group">
					<label for="port_name">Port name*</label>
					<input class="form-control" id="port_name"  input type="text" name="port_name" size="40" maxlength="40" value="{$data.name}">
				</div>
				<div class="form-group">
					<label for="contact">Contact person*</label>
					<input class="form-control" id="contact"  type="text" name="contact_person" size="40" maxlength="40" value="{$data.contact_person}">
				</div>
				<div class="form-group">
					<label for="country">Country*</label>
					{assign var='countryCode' value=$arrSlabUser.country}{$countryArr[$countryCode]}
					<select class="form-control" id="country" name="country"><option name="0"></option>{html_options options=$countryArr selected=$data.country}
					</select>
				</div>
				<div class="form-group">
					<label for="region">Region*</label>
					<input class="form-control" id="region" type="text" name="region" size="40" maxlength="40" value="{$data.region}">
				</div>
				<div class="form-group">
					<label for="city">City*</label>
					<input class="form-control" id="city" type="text" name="city" size="40" maxlength="40" value="{$data.city}">
				</div>
				<div class="form-group">
					<label for="postal">Postal Code*</label>
					<input class="form-control" id="postal" type="text" name="postal_code" size="40" maxlength="40" value="{$data.postal_code}">
				</div>
				<div class="form-group">
					<label for="addr1">Address line 1*</label>
					<input class="form-control" id="addr1" type="text" name="address1" size="40" maxlength="40" value="{$data.address1}">
				</div>
				<div class="form-group">
					<label for="addr2">Address line 2*</label>
					<input class="form-control" id="addr2" type="text" name="address2" size="40" maxlength="40" value="{$data.address2}">
				</div>
				<div class="form-group">
					<label for="phone">Primary phone*</label>
					<input class="form-control" id="phone" type="text" name="phone2" size="40" maxlength="40" value="{$data.phone2}">
				</div>
				<div class="form-group">
					<label for="alternative">Alternative phone</label>
					<input class="form-control" id="alternative" type="text" name="phone2" size="40" maxlength="40" value="{$data.phone2}">
				</div>
				<div class="form-group">
					<label for="fax">Fax</label>
					<input class="form-control" id="fax" type="text" name="fax" size="40" maxlength="40" value="{$data.fax}">
				</div>

				<div class="row">
					<div class="col-md-12">

						{if $data.id_slab_core_user!=''}
						<input type="submit" name="submit" class="btn btn-default" value="Update profile">
						{else}
						<input type="submit" name="submit" class="btn btn-default" value="I accept. Update profile">
						{/if}
						<input type="button" name="cancel" class="btn btn-default" value="cancel" onclick="cancelWarehouseEdit();">

					</div>
				</div>
			</form>


			{/if}

        </div> <!-- End of Tab 1 -->

      </div> <!-- End of Tab Content -->
    </div>
  </div>


</div> <!-- End Column -->

<!--
{include file='account_end.tpl'}
 -->
