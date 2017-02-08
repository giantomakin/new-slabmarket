{assign var='title' value='Account info'}
{assign var='menu'  value=1}
<script type="text/javascript" src="{$_upDir}xml_js/account.js"></script>
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

			<div class="tab-content col-sm-12"> <!-- Start of Tab Content -->

				<div role="tabpanel" class="tab-pane active" id="tab1" style="padding:20px"> <!-- Start of Tab 1 -->

					<div class="col-md-12"> <!-- Left Side Section -->
						<h3 class="text-left">Account Info</h3>
						<table class="table table-striped">

							{if $_userInfo.type==1}

							<h4 class="text-left">Seller Account</h4>
							<tbody>
								<tr>
									<td>Company Name</td>
									<td>{$arrUser.name}</td>
								</tr>
								<tr>
									<td>Port Name</td>
									<td>{$arrUser.port_name}</td>
								</tr>
								<tr>
									<td>Contact Person</td>
									<td>{$arrUser.contact_person}</td>
								</tr>
								<tr>
									<td>Country</td>
									<td>{$countryArr[$arrUser.country]}</td>
								</tr>
								<tr>
									<td>Region</td>
									<td>{$arrUser.region}</td>
								</tr>
								<tr>
									<td>City</td>
									<td>{$arrUser.city}</td>
								</tr>
								<tr>
									<td>Postal Code</td>
									<td>{$arrUser.postal_code}</td>
								</tr>
								<tr>
									<td>Address Line 1</td>
									<td>{$arrUser.address1}</td>
								</tr>
								<tr>
									<td>Address Line 2</td>
									<td>{$arrUser.address2}</td>
								</tr>
								<tr>
									<td>Primary Phone</td>
									<td>{$arrUser.phone1}</td>
								</tr>
								<tr>
									<td>{$arrUser.phone2}</td>
									<td> </td>
								</tr>
								<tr>
									<td>Fax</td>
									<td>{$arrUser.fax}</td>
								</tr>
								{else}
								<h4 class="text-left">Buyer Account</h4>
								<tr>
									<td>Contact Person</td>
									<td>{$arrUser.contact_person}</td>
								</tr>
								<tr>
									<td>Company</td>
									<td>{$arrUser.company}</td>
								</tr>
								<tr>
									<td>Address line 1</td>
									<td>{$arrUser.address1}</td>
								</tr>
								<tr>
									<td>Address line 2</td>
									<td>{$arrUser.address2}</td>
								</tr>
								<tr>
									<td>State</td>
									<td>{$arrUser.state}</td>
								</tr>
								<tr>
									<td>City</td>
									<td>{$arrUser.city}</td>
								</tr>
								<tr>
									<td>Zip code</td>
									<td>{$arrUser.zip}</td>
								</tr>
								<tr>
									<td>Primary phone</td>
									<td>
										{if $arrUser.r_phone1 != ""}
										{$arrUser.r_phone1}-{$arrUser.r_phone2}-{$arrUser.r_phone3} {if $arrUser.r_phone4 != ""}Ext. {$arrUser.r_phone4}{/if}
										{/if}
									</td>
								</tr>
								<tr>
									<td>Alternative phone</td>
									<td>
										{if $arrUser.a_phone1 != ""}
										{$arrUser.a_phone1}-{$arrUser.a_phone2}-{$arrUser.a_phone3} {if $arrUser.a_phone4 != ""}Ext. {$arrUser.a_phone4}{/if}
										{/if}
									</td>
								</tr>
								<tr>
									<td>Fax</td>
									<td>{$arrUser.fax1}-{$arrUser.fax2}-{$arrUser.fax3}</td>
								</tr>
							</tbody>
							{/if}
						</table>
						<p class="text-center">
							<a href="{$_upDir}accountProfile" class="btn btn-info" >{$_userInfo.email}</a>
							<a href="{$_upDir}accountProfile" class="btn btn-primary">Edit Profile</a>
							{if $_userInfo.type==0}<a href="{$_upDir}accountSettings" class="btn btn-success">Edit Shipping Addresses</a>{/if}
							<a href="{$_upDir}accountSettings" class="btn btn-warning">Change Settings</a>
						</p>
					</div> <!-- End of Left Side Section -->
				</div> <!-- End of Tab 1 -->

			</div> <!-- End of Tab Content -->
		</div>
	</div>


</div> <!-- End Column -->

<!--
{include file='account_end.tpl'}
-->
