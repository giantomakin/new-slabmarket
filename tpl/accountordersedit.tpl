{assign var='title' value='Orders'}
{assign var='menu'  value=2}

<div class="col-sm-12"> <!-- Begin Column -->
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

			{if is_array($arr)}

			<div style="padding:20px">
				<div style="font:bold 14px Arial;color:#325d6a;text-align:left;padding:2px;">Order #{$id_order}</div>
				<table class="inventoryListTable" cellspacing="0" border="0">
					<thead>
						<tr>
							<th>Stone Name</th>
							<th>Type</th>
							<th>Quantity (Bundles)</th>
							<th>Stone ID</th>
							<th>Slab Dimensions</th>
							<th>SQF</th>
							<th>Unit Price</th>
							<th>Total</th>
						</tr>
					</thead>
					<tbody>
						{section name=i loop=$arr}
						<tr>
							<td>{$arr[i].name}</td>
							<td>{$arr[i].product}</td>
							<td>{$arr[i].quantity}</td>
							<td>{$arr[i].id_slab_item}</td>
							<td>{$arr[i].item_width}x{$arr[i].item_height}</td>
							<td>{$arr[i].sqf}</td>
							<td>${$arr[i].unit_price}</td>
							<td>${$arr[i].total}</td>
						</tr>
						{/section}
					</tbody>
				</table>
			</div>
			{else}
			<div class="alert alert-dismissible alert-warning">
				  <button type="button" class="close" data-dismiss="alert">&times;</button>
				  <strong>Oops!</strong> No orders placed!.
				</div>
			{/if}
		</div>
	</div>
</div> <!-- End Column -->

<!-- {include file='account_end.tpl'} -->






