{assign var='title' value='Orders'}
{assign var='menu'  value=2}

{include file='account_start.tpl'}


		{*{assign var='arr' value=$arr}*}
		{if is_array($arr)}
		
		<table class="inventoryListTable" cellspacing="0" border="0">
			<tr>
				<th>Id</th>
				<th>Status</th>
				<th>Created</th>
				<th>&nbsp;</th>
			</tr>
			{section name=i loop=$arr}	
			<tr>
				<td>{$arr[i].id}</td>
				<td>{$arr[i].status}</td>
				<td>{$arr[i].created}</td>
				<td><a href="{$_upDir}accountOrders/{$arr[i].id}">details</a></td>
			</tr>		
			{/section}
		</table>
		{else}
			<div style="font:bold 13px Arial;color:#325d6a;text-align:center;padding:20px;">No orders placed</div>
		{/if}
			
						
{include file='account_end.tpl'}