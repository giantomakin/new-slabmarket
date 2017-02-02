{assign var='title' value='Orders'}
{assign var='menu'  value=2}

{include file='account_start.tpl'}


{if is_array($arr)}
<div style="font:bold 14px Arial;color:#325d6a;text-align:left;padding:2px;">Order #{$id_order}</div>
<table class="inventoryListTable" cellspacing="0" border="0">
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
</table>
{else}
	<div style="font:bold 13px Arial;color:#325d6a;text-align:center;padding:20px;">No orders placed</div>
{/if}
			
						
{include file='account_end.tpl'}