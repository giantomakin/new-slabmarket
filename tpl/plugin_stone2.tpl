<div class="s_cont">
	{if $mode=='stoneOtherQuarries'}
		<a style="cursor: pointer;" onclick="redirectStone1('{$arr2[i].stone_name}','stoneOtherQuarries',{$stone.id_slab_user},{$arr2[i].id_slab_item})">{$arr2[i].stone_name|capitalize|truncate:23:"...":true}</a>
	{else}
		<a href="{$_upDir}{$arr2[i].stone_name|replace:' ':'-'|lower}">{$arr2[i].stone_name|capitalize|truncate:23:"...":true}</a>
	{/if}
	<br />
	<div class="s_price">
		{$arr2[i].stone_type}<br />
		<span class="price2">{if $arr2[i].item_price == 0 || $arr2[i].id_slab_user == 2848}Inquire</span>{else}${$arr2[i].item_price|string_format:"%.2f"}</span>/sq.ft.{/if}<br />
		{if $mode=='stoneOtherQuarries'}
			<a style="cursor: pointer;" onclick="redirectStone1('{$arr2[i].stone_name}','stoneOtherQuarries',{$stone.id_slab_user},{$arr2[i].id_slab_item})"><img src="{$_upDir}img/s_detail.png" alt="{$arr2[i].stone_name}" width="48" height="11" vspace="10" hspace="5" border="0" align="right"></a>
		{else}
			<a href="{$_upDir}{$arr2[i].stone_name|replace:' ':'-'|lower}"><img src="{$_upDir}img/s_detail.png" alt="{$arr2[i].stone_name}" width="48" height="11" vspace="10" hspace="5" border="0" align="right"></a>
		{/if}
	</div>
	{if $mode=='stoneOtherQuarries'}
		<a style="margin:0;padding:0; cursor: pointer;" onclick="redirectStone1('{$arr2[i].stone_name}','stoneOtherQuarries',{$stone.id_slab_user},{$arr2[i].id_slab_item})"><img src="{if $arr2[i].id_slab_item_photo!='' && $arr2[i].id_slab_item_photo!=0}{$_upDir}core/storage/slabmarket/stone/{$arr2[i].id_slab_item_photo}_t.jpg{else}{$_upDir}img/stonenophoto.png{/if}" alt="{$arr2[i].stone_name}" width="72" height="50" border="0" class="s_img"></a>
	{else}
		<a href="{$_upDir}{$arr2[i].stone_name|replace:' ':'-'|lower}" style="margin:0;padding:0;"><img src="{if $arr2[i].id_slab_item_photo!='' && $arr2[i].id_slab_item_photo!=0}{$_upDir}core/storage/slabmarket/stone/{$arr2[i].id_slab_item_photo}_t.jpg{else}{$_upDir}img/stonenophoto.png{/if}" alt="{$arr2[i].stone_name}" width="72" height="50" border="0" class="s_img"></a>
	{/if}
</div>
