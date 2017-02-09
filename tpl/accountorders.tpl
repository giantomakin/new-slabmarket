{assign var='title' value='Orders'}
{assign var='menu'  value=2}
<script type="text/javascript" src="{$_upDir}xml_js/account.js"></script>
<!-- {include file='account_start.tpl'} -->

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

			<div class="tab-content col-md-12"> <!-- Start of Tab Content -->

				{if $msg!=''}
				<div class="alert alert-dismissible alert-success">
				  <button type="button" class="close" data-dismiss="alert">&times;</button>
				  <strong>Well done!</strong> {$msg}.
				</div>
				{/if}


				<div role="tabpanel" class="tab-pane active" id="tab3" style="padding:20px"> <!-- Start of Tab 3 -->
					<div class="table_section">
						<div style="display: inline-block; width: 100%;">
							<h3 class="text-left">Orders</h3>
						</div>

						{*{assign var='arr' value=$arr}*}
						{if is_array($arr)}
						<table>
							<thead>
								<tr>
									<th class="col-md-1">ID</th>
									<th class="col-md-1">Status</th>
									<th class="col-md-1">Created</th>
									<th class="col-md-1"></th>
								</tr>
							</thead>
							<tbody>
								{section name=i loop=$arr}
								<tr>
									<td>{$arr[i].id}</td>
									<td>{$arr[i].status}</td>
									<td>{$arr[i].created}</td>
									<td><a href="{$_upDir}accountOrders/{$arr[i].id}">details</a></td>
								</tr>
								{/section}
							</tbody>
						</table>
						{else}
						<div class="alert alert-dismissible alert-danger">
		            	  <button type="button" class="close" data-dismiss="alert">&times;</button>
		            	  <strong>Oh snap!</strong> No orders Placed.
		            	</div>
						{/if}
					</div>
				</div> <!-- End of Tab 3 -->



			</div> <!-- End of Tab Content -->





		</div>
	</div>


</div> <!-- End Column -->





<!-- {include file='account_end.tpl'} -->
