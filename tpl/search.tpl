<script type="text/javascript" src="../xml_js/common.js"></script>
<script type="text/javascript" src="../xml_js/stonename.js"></script>
<!-- LEFT SIDE CONTAINER -->
<div class="container col-sm-3" id="id_search">

  <div class="panel panel-default your_container_tab">
    <div class="panel-heading">
		{if $smarty.session.slabmarket.container.user == 1}
		Your Order
		     <h3 class="panel-title">Your Order </h3>
		{else}
		     <h3 class="panel-title">Your Container </h3>
		{/if}

      <span class="glyphicon glyphicon-play-circle"></span>
    </div>
    <div>
      <div class="panel-body">
      	{if is_array($container.item_list)}
      	<div class="mcart_h1">Stone</div><div class="mcart_h2">Qty.</div>
      		{assign var='arr' value=$container.item_list}
      		{section name=i loop=$arr}
      			<div class="mcart_c1">{if strstr($arr[i].product_name,"1/4") === false}<img src="{$_upDir}img/mcart_1.png" alt="" width="17" height="15	" border="0" align="left">{else}<img src="{$_upDir}img/mcart_2.png" alt="" width="17" height="15	" border="0" align="left">{/if}<a href="{$_upDir}{$arr[i].stone_name|replace:' ':'-'|lower}">{$arr[i].stone_name|capitalize}</a></div><div class="mcart_c2">{$arr[i].quantity}</div>
      		{/section}
      		<div style="float:left;margin:10px 5px 10px 5px;">Estimated Price: <strong>${$container_summary.total}</strong></div>
      		<div style="float:left;margin:10px 5px 10px 5px;">Coverage: <strong>{$container_summary.coverage} sqft</strong></div>
      		<div style="float:left;margin:10px 5px 10px 5px;">Bundles: <strong>{$container_summary.bundle}</strong></div>
      		<div style="float:left;margin:10px 5px 10px 5px;">Slabs: <strong>{$container_summary.bundle*7}</strong></div>
      		{if $smarty.session.slabmarket.container.user == 1 || $smarty.session.slabmarket.redirect.mode != 'stoneOther'}
      	    {else}
      		    <img src="{$_upDir}img/mcart_lines.png" alt="" width="145" height="3" border="0" style="margin:5px 0 5px 1px;">
      		    <div style="text-align:center;color:#666;font-size:10px;">
      			    Container Capacity<br>
      			    <a href="{$_upDir}container"><img src="{$_upDir}img/mc_{$container_summary.bundle}.png" alt="" width="130" height="27" border="0"></a>
      		    </div>
      	    {/if}
      	{else}
      	<p>Your {if $smarty.session.slabmarket.container.user == 1}Order{else}Container{/if} is Empty</p>
      	{/if}
      </div>
    </div>
  </div>

  <div class="panel panel-default">
    <div class="panel-heading">
      <h3 class="panel-title">Search by Name</h3>
    </div>
	<div class="panel-body">
			<div class="row search_block">
		<div class="col-md-12">
		 <form id="fSearch">
			<div class="input-group">

			  <input type="text" name="stone_name" value="{$_search.stoneName}" class="form-control" placeholder="Search for..." size="12" onBlur="getStoneNameList('');" onKeyUp="getStoneNameList('');">
			  <span class="input-group-btn">
			    <button class="btn btn-default" type="button" name="clear" value="" class="search_reset" onclick="clearSearch();">Clear!</button>
			  </span>

			</div>
			</form>
			<div class="search_block">
				<div id="searchStoneListDiv">
					<p style="padding:10px;font-weight:bold;" class="text-center"><span id="searchStoneCnt"></span>&nbsp;stones found</span></p>
					<table class="table" id="searchStoneTable"></table>
				</div>
				<div id="searchStoneLoadingDiv" style="text-align: center; padding: 5px;">
					Loading...
				</div>
			</div>
		</div>
  </div>
	</div>
  </div>

  <div class="panel panel-default ads_section">
    <div class="panel-body">
      {if ($option == 1)&&(0)}
      <div class="search_block" style="margin-top:10px;">

      </div>
      <img src="{$_upDir}img/search_foot.png" alt="" width="147" height="12" border="0">
      {else}
      {if ($option != 2)&&($option != 3)&&($option != 4)&&(1)}
      <div id="estimate2">
      	<a href="https://marble.com/estimate" target="_blank"><img src="{$_upDir}img/slabmarketads/estimator3.jpg"></a>
      </div>
      {/if}
      {/if}
    </div>
  </div>
  <div class="panel panel-default ads_section">
    <div class="panel-body">
      <a href="http://mrstone.com/products/agm-daily-granite-and-marble-cleaner?variant=1186761993" target="_blank"><img src="{$_upDir}img/slabmarketads/mrstone4.jpg"></a>
    </div>
  </div>

</div>


{literal}
<script language="javascript">
	getStoneNameList('{/literal}{$_search.stoneName}{literal}');
</script>
{/literal}
