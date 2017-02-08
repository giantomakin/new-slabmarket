<script type="text/javascript" src="../xml_js/common.js"></script>
<script type="text/javascript" src="../xml_js/stonename.js"></script>
<!-- LEFT SIDE CONTAINER -->
<div class="container col-sm-3" id="id_search">

  <div class="panel panel-default your_container_tab">
	    <div class="panel-heading">
			Hello! {$_userLogin}
			<span class="glyphicon glyphicon-cog"></span>
	    </div>
	    <div class="panel-body">
	    	<div class="list-group">
	    	  <a class="list-group-item" href="{$_upDir}tracking" title="" class="tl_left">Order tracking</a>

	    	  	<a class="list-group-item" href="{$_upDir}container" title="">
	    	  		{if $smarty.session.slabmarket.container.user == 1}
	    	  		Order
	    	  		{else}
	    	  		Container
	    	  		{/if}
	    	  	</a>

	    	  {if $_userIsSigned==1}
	    	  <a class="list-group-item" href="{$_upDir}account" title="">My account</a>
	    	  <a class="list-group-item" href="{$_upDir}logout">Sign Out</a>
	    	  {else}
	    	  <a class="list-group-item" href="{$_upDir}login" title="" class="tl_right">Sign In</a>
	    	  {/if}
	    	</div>
	    </div>

  </div>

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
   			<table class="table table-bordered">
   			   <tbody>
   			   <tr>
   			   	<td style="border-right-color:transparent;"><small>Stone</small></td>
   			   	<td><small>&nbsp;</small></td>
   			   	<td><small>Qty.</small></td>
   			   </tr>
      		{assign var='arr' value=$container.item_list}
      		{section name=i loop=$arr}

      			  	<tr>
      			  		<td style="border-right-color:transparent;">
      			  		{if strstr($arr[i].product_name,"1/4") === false}<strong>¾'</strong>{else}<strong>1¼'</strong>{/if}
      			  		</td>
      			  		<td>
      			  		<a href="{$_upDir}{$arr[i].stone_name|replace:' ':'-'|lower}"><strong>{$arr[i].stone_name|capitalize}</strong></a>
      			  		</td>
      			  		<td><strong>{$arr[i].quantity}</strong></td>
      			  	</tr>

      		{/section}
      		</tbody>
      		</table>
      		<hr>
      		<div class="pull-left" style="margin:10px 5px 10px 5px;">Estimated Price: <strong>${$container_summary.total}</strong></div>
      		<div class="pull-left" style="margin:10px 5px 10px 5px;">Coverage: <strong>{$container_summary.coverage} sqft</strong></div>
      		<div class="pull-left" style="margin:10px 5px 10px 5px;">Bundles: <strong>{$container_summary.bundle}</strong></div>
      		<div class="pull-left" style="margin:10px 5px 10px 5px;">Slabs: <strong>{$container_summary.bundle*7}</strong></div>
      		{if $smarty.session.slabmarket.container.user == 1 || $smarty.session.slabmarket.redirect.mode != 'stoneOther'}

      	    {else}
	      		<br>
	      		<hr>
		    	<div style="clear:both; text-align:center;color:#666;font-size:10px;">
		    	<h4>Container Capacity</h4>
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
			    <button class="btn btn-primary" type="button" name="clear" value="" class="search_reset" onclick="clearSearch();">Clear!</button>
			  </span>

			</div>
			</form>
			<div class="search_block">
				<div id="searchStoneListDiv">
					<table class="table" id="searchStoneTable"></table>
					<p style="padding:10px;font-weight:bold;" class="text-center"><span id="searchStoneCnt"></span>&nbsp;stones found</span></p>
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
      <img class="img-responsive" src="{$_upDir}img/search_foot.png" alt="" width="147" height="12" border="0">
      {else}
      {if ($option != 2)&&($option != 3)&&($option != 4)&&(1)}
      <div id="estimate2">
      	<a href="https://marble.com/estimate" target="_blank"><img class="img-responsive" src="{$_upDir}img/slabmarketads/estimator3.jpg"></a>
      </div>
      {/if}
      {/if}
    </div>
  </div>
  <div class="panel panel-default ads_section">
    <div class="panel-body">
      <a href="http://mrstone.com/products/agm-daily-granite-and-marble-cleaner?variant=1186761993" target="_blank"><img class="img-responsive" src="{$_upDir}img/slabmarketads/mrstone4.jpg"></a>
    </div>
  </div>

</div>


{literal}
<script language="javascript">
	getStoneNameList('{/literal}{$_search.stoneName}{literal}');
</script>
{/literal}
