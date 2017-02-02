{assign var='title' value='Inventory'}
{assign var='menu'  value=4}

{include file='account_start.tpl'}

{if $msg!=''}
<div class="actionNotice" style="text-align: center; font-weight: 600; font-size: 16px; margin: 10px 5px 2px 5px; padding: 5px; border: 2px solid green; color: green">{$msg}</div>
{/if}


{assign var='arr' value=$arrSlabItem}
{if is_array($arr)}

<table class="inventoryListTable" cellspacing="0" border="0">
	<tr>
		<th>Id</th>
		<th>Stone name</th>
		<th>Type</th>
		<th>Thickness</th>
		<th>Size</th>
		<th>Price</th>
		<th colspan="2" style="text-align: right;"><a href="{$_upDir}accountInventoryNew" style=""><img src="{$_upDir}img/add_item.png" alt="" width="115" height="26" border="0"></a></th>
	</tr>
	{section name=i loop=$arr}
	{assign var='countryCode' value=$arr[i].item_country}				
	<tr>
		<td>{$arr[i].id_slab_item}</td>
		<td><a href="{$_upDir}accountInventoryEdit/{$arr[i].id_slab_item}">{$arr[i].stone_name|capitalize}</a></td>
		<td>{$arr[i].stone_type}</td>
		<td>{if $arr[i].id_slab_product==1}<sup>3</sup>/<sub>4</sub>{elseif $arr[i].id_slab_product==2}1<sup>1</sup>/<sub>4</sub>{/if}</td>
		<td>{$arr[i].item_width}in. x {$arr[i].item_height}in. </td>
		<td>{if $arr[i].price_currency == 'USD'}${else}&euro;{/if}{$arr[i].item_price}/sq.ft.</td>
		<td><a href="{$_upDir}accountInventoryEdit/{$arr[i].id_slab_item}">edit</a></td>
		<td><a onclick="deleteItem({$arr[i].id_slab_item});" style="cursor: pointer; text-decoration: underline;">delete</a></td>
	</tr>		
	{/section}
</table>

{else}
	<div style="font:bold 13px Arial;color:#325d6a;text-align:center;padding:20px;">
		No slabs defined<br /><br />
		<a href="{$_upDir}accountInventoryNew" style=""><img src="{$_upDir}img/add_item.png" alt="" width="115" height="26" border="0"></a>
	</div>
{/if}

<br />
						
{include file='account_end.tpl'}