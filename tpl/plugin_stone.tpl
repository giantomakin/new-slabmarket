
<div class="col-xs-6 col-sm-6 col-md-4 col-lg-3 slab_card"> <!-- Start of Slab Card 1 -->
  <div class="panel panel-default">
    <div class="panel-heading">
      {if $mode=='stoneOtherQuarries'}
      	<a style="cursor: pointer;" onclick="redirectStone1('{$arr[i].stone_name}','stoneOtherQuarries',{$stone.id_slab_user},{$arr[i].id_slab_item})">
      	<h3 class="panel-title">{$arr[i].stone_name|capitalize|truncate:23:"...":true}</h3>
      	</a>
      {else}
      	<a href="{$_upDir}{$arr[i].stone_name|replace:' ':'-'|lower}">
      	<h3 class="panel-title">{$arr[i].stone_name|capitalize|truncate:20:"...":true}</h3>
      	</a>
      {/if}

    </div>
    <div class="panel-body">
      <div class="media">
        <div class="media-left">

			{if $mode=='stoneOtherQuarries'}
				<a style="margin:0;padding:0; cursor: pointer;" onclick="redirectStone1('{$arr[i].stone_name}','stoneOtherQuarries',{$stone.id_slab_user},{$arr[i].id_slab_item})"><img src="{if $arr[i].id_slab_item_photo!='' && $arr[i].id_slab_item_photo!=0}{$_upDir}core/storage/slabmarket/stone/{$arr[i].id_slab_item_photo}_t.jpg{else}{$_upDir}img/stonenophoto.png{/if}" alt="{$arr[i].stone_name}"></a>
			{else}
				<a href="{$_upDir}{$arr[i].stone_name|replace:' ':'-'|lower}" style="margin:0;padding:0;"><img src="{if $arr[i].id_slab_item_photo!='' && $arr[i].id_slab_item_photo!=0}{$_upDir}core/storage/slabmarket/stone/{$arr[i].id_slab_item_photo}_t.jpg{else}{$_upDir}img/stonenophoto.png{/if}" alt="{$arr[i].stone_name}"></a>
			{/if}

        </div>
        <div class="media-right">
          <p>{$arr[i].stone_type} <br/> <span>{if $arr[i].item_price == 0 || $arr[i].id_slab_user == 2848}Inquire</span>{else}${$arr[i].item_price|string_format:"%.2f"}</span>/sq.ft.{/if}</p>
          {if $mode=='stoneOtherQuarries'}
          	<a style="cursor: pointer;" onclick="redirectStone1('{$arr[i].stone_name}','stoneOtherQuarries',{$stone.id_slab_user},{$arr[i].id_slab_item})"><img src="{$_upDir}img/s_detail.png" alt="{$arr[i].stone_name}" width="48" height="11" vspace="10" hspace="5" border="0" align="right"></a>
          {else}
          	<a href="{$_upDir}{$arr[i].stone_name|replace:' ':'-'|lower}"><img src="{$_upDir}img/s_detail.png" alt="{$arr[i].stone_name}" width="48" height="11" vspace="10" hspace="5" border="0" align="right"></a>
          {/if}
        </div>
      </div>
    </div>
  </div>
</div> <!-- End of Slab Card 1 -->
