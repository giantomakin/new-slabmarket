<script type="text/javascript" src="{$_upDir}core/js/formValidate/formValidate.js"></script>
<script type="text/javascript" src="{$_upDir}xml_js/stone.js"></script>

{literal}
<style>
	#tabs{
		float: left;
		padding: 0;
	}
	#tabs ul{
		font: bold 11px Arial, Verdana, sans-serif;
		list-style:none;
		width: 426px;
		padding: 0;
	}
	#tabs li{
		margin: 1px;
		display:inline;

	}
	#tabs a{
		background-image: url("../../img/tab_1.png");
		float:left;
		text-decoration:none;
		width: 141px;
		height: 22px;
		margin: 0 1px 0 0;
		color: #cccccc;
	}
	#tabs a span{
		text-align: center;
		padding-top: 4px;
		float:left;
		display:block;

	}
	#tabs a span{float:none;}
	#tabs a:hover{color: white;}
	#tabHeaderActive span, #tabHeaderActive a { background-image: url("../../img/tab_2.png"); color:#fff;}
	.tabContent {
		width: 415px;
		clear:both;
		border:2px solid #42577B;
		padding:3px;
		background-color:#FFF;
	}
</style>
<script type="text/javascript">
	function itemProperties(width,height,price,picture,iditem,idstone,iduser) {
		this.width=width;
		this.height=height;
		this.price=price;
		this.picture=picture;
		this.iditem=iditem;
		this.idstone=idstone;
		this.iduser=iduser;
	}
	var itemArr = new Array();
	{/literal}
	{assign var='arr' value=$arrItem}
	{section name=i loop=$arr}
	itemArr[{$arr[i].id_slab_item}]= new itemProperties({$arr[i].item_width},{$arr[i].item_height},{if $arr[i].id_slab_user == 2848}0{else}{$arr[i].item_price}{/if},{$arr[i].id_slab_item_photo},{$arr[i].id_slab_item},{$arr[i].id_slab_stone},{$arr[i].id_slab_user});
	{/section}
</script>
{include file='search.tpl'}

<!-- BEGIN RIGHT SIDE CONTAINER -->
<form action="{$_upDir}container" method="POST" id="fAddToCart" name="fAddToCart" onsubmit="return checkAddToContainerForm('{$container_summary.user}','{$stone.id_slab_user}');">
	<input type="hidden" name="action" value="add">
	<input type="hidden" name="quantity" value="1">
	<input type="hidden" name="user" value="{$stone.id_slab_user}">
	<input type="hidden" name="alastid" value="{$_alastid}">

	<input type="hidden" id="iditem" value="0">
	<input type="hidden" id="idstone" value="0">
	<input type="hidden" id="iduser" value="0">
	<div class="container col-md-9">

		<div class="row" style="padding: 0px;"> <!-- Begin Row -->

			<div class="col-md-12 col-md-6"> <!-- Start of Individual slab image side -->
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">{$stone.stone_name|capitalize}</h3>
					</div>
					<div class="panel-body">
						<a id="photoLink" href="{if $stone.id_slab_item_photo!=''}{$_upDir}core/storage/slabmarket/stone/{$stone.id_slab_item_photo}.jpg{else}{$_upDir}img/stonenophoto.png{/if}"><img id="photoImg" src="{if $stone.id_slab_item_photo!=''}{$_upDir}core/storage/slabmarket/stone/{$stone.id_slab_item_photo}.jpg{else}{$_upDir}img/stonenophoto.png{/if}" style="width: 100%;"></a>

						{if ($option == 2)&&(0)}
						<div class="row">
							<div class="col-md-12">
								<div class="panel panel-default">
									<div class="panel-heading">Kitchen countertop</div>
									<div class="panel-body text-center">

										<p style="background-color: #829E86; color: white; font: bold 16px Arial; text-align: center; padding: 4px; margin: 1px 0 0 0;">Get price for your kitchen countertop</p>

										<form class="form-inline" id="estimateForm" action="http://www.marble.com/estimate/slab2" method="post">
											<div class="form-group">
												<label for="estimateZipcode">Enter your ZIP CODE: </label>
												<input id="estimateZipcode" class="form-control zipcode" type="text" name="zipcode" maxlength="6" placeholder="Zip code" >
											</div>

											<button type="submit" class="btn btn-default">Start Quote</button>
										</form>
										<br>
										<p style="font: 10px Arial; text-align: center; color: #829E86;">Powered by Marble.com</p>
									</div>
								</div>
							</div>
						</div>
						{/if}

						{if ($option == 4)&&(0)}
						<div class="row">
							<div class="col-md-12">
								<div class="panel panel-default">
									<div class="panel-heading">Get price for your kitchen countertop</div>
									<div class="panel-body text-center">
										<p style="background-color: #829E86; color: white; font: bold 16px Arial; text-align: center; padding: 4px; margin: 1px 0 0 0;">Get price for your kitchen countertop</p>

										<form class="form-inline" id="estimateForm" action="http://www.marble.com/estimate/slab4" method="post">
											<div class="form-group">
												<label for="estimateZipcode">Enter your ZIP CODE: </label>
												<input id="estimateZipcode" class="form-control zipcode" type="text" name="zipcode" maxlength="6" placeholder="Zip code" >
											</div>

											<button type="submit" class="btn btn-default">Start Quote</button>
										</form>
									</div>
								</div>
							</div>
						</div>
						{/if}


					</div>
				</div>
			</div> <!-- End of Individual slab image side -->

			<div class="col-md-12 col-md-6">

				<div class="col-md-12 no-padding">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">Inquire</h3> <!-- Or $Price/sq.ft -->
						</div>
						<div class="panel-body">
							<p>Minimal Order: 2400 sq.ft. - 6 Bundles</p>
						</div>
					</div>
				</div>


				<div class="col-md-12 no-padding order_here_section"> <!-- ADDED CLASS -->
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">Order Here</h3>
						</div>
						<div class="panel-body">
							<table class="table condense">
								<thead>
									<tr>
										<th><b>Thickness</b></th>
										<th><b>Slab Size</b></th>
										<th><b>Price</b></th>
									</tr>
								</thead>
								<tbody>
									{assign var='arr' value=$arrItem}
									{section name=i loop=$arr}
									<tr class="active">
										<td><p style="width:70px;padding:0;"><input style="border:none;vertical-align:middle;margin:0 4px 0 0;" type="radio" name="item" value="{$arr[i].id_slab_item}" {if $arr[i].id_slab_item==$stone.id_slab_item}{literal}checked{/literal}{/if} onclick="updateQuantity();">{if $arr[i].id_slab_product==1}3/4{else}1 1/4{/if}</p></td>
										<td><p>{$arr[i].item_width}x{$arr[i].item_height}</p></td>
										<td><p><span>{if $arr[i].item_price == 0 || $arr[i].id_slab_user == 2848}Inquire</span>{else}${$arr[i].item_price|string_format:"%.2f"}</span>/sq.ft.{/if}</p></td>
									</tr>
									{/section}

								</tbody>
							</table>
							<div class="input-group plus_minus_quantity"> <!-- ADDED CLASS -->
								<p><b>Bundle Quantities: </b> <a href="#" class="btn btn-default btn-xs" role="button" name="buttonMinus" value="" onclick="changeQuantity(-1,'{$container_summary.bundle}','{$stone.id_slab_user}');" class="btn btn-default btn-number" data-type="minus" data-field="quant[1]"><i class="fa fa-minus-circle" aria-hidden="true" style="color:#ff4136" ></i> </a>
								<input style="height:23px;" type="text" name="quantityField" value="1" size="1" disabled class="form-control input-number cart_quantity input-sm" value="1" min="1" max="10">
								<a href="#" class="btn btn-default btn-xs" role="button" name="buttonPlus" value="" onclick="changeQuantity(1,'{$container_summary.bundle}','{$stone.id_slab_user}');" data-type="plus" data-field="quant[1]"><i class="fa fa-plus-circle" style="color:#28b62c;" aria-hidden="true"></i> </a></p>






							</div>

							<div class="text-center">
								<p>Coverage: <span id="coverage"></span></p>

								<p>Slab Quantity: <span id="slabQuantity">7</span></p>
								<hr>
								<p><b>Total Price: <span id="objectPriceTotal">$0</span></b></p>
							</div>

							<div>
								{if $userType == 0}
								{if $container_summary.bundle < 7}
								{if $smarty.session.slabmarket.redirect.user == 1}
								<input type="submit" name="submit" value="Add to Order" class="btn btn-info cart_submit2 pull-right">
								{else}
								<input type="submit" name="submit" value="Add to Container" class="btn btn-primary cart_submit pull-right">
								{/if}
								{else}
								<div style="font-size: 11px; height: 50px; vertical-align:middle;">
								<div style="color: red; font-size: 13px; padding: 5px;">Container is full </div>
									go to <a href="{$_upDir}container">your container</a> to change slab quantities
								</div>
								{/if}
								{/if}
							</div>
							</form>
						</div>
					</div>
				</div>

			</div>

		</div> <!-- End Row -->

		<div class="row"> <!-- Begin Row -->
			<div class="col-md-12">

				<div class="btn-group btn-group-justified" role="tablist" aria-label="...">
					<div class="btn-group" role="group">
						<button type="button" class="btn btn-default" href="#tab1" aria-controls="tab1" role="tab" data-toggle="tab">Other Stones from {if $stone.id_slab_user != 1}Supplier{else}Warehouse{/if} #{$stone.id_slab_user} <span class="badge">{$cntOtherStone}</span></button>
					</div>
					<div class="btn-group" role="group">
						<button type="button" class="btn btn-default" href="#tab2" aria-controls="tab2" role="tab" data-toggle="tab">{$stone.stone_name|capitalize} in other Quarries <span class="badge">{$cntOtherStoneUser}</span></button>
					</div>
				</div>

				<div class="tab-content tab_content_border"> <!-- Start of tab content -->

					<div role="tabpanel" class="tab-pane active" id="tab1">
						<div class="row slab_list"> <!-- Start of Row -->
							<div class="col-md-12">

								{if is_array($arrOtherStone)}
								{assign var='arr' value=$arrOtherStone}
								{section name=i loop=$arr}
								{stone}
								{/section}
								{else}
								<div class="alert alert-dismissible alert-danger">
									<button type="button" class="close" data-dismiss="alert">&times;</button>
									<strong>Oh snap!</strong> No other slabs.
								</div>
								{/if}

							</div>
						</div> <!-- End of Row -->

					</div>

					<div role="tabpanel" class="tab-pane" id="tab2">
						<div class="row">
							<div class="col-md-12">
								{if is_array($arrOtherStoneUser)}
								{assign var='arr' value=$arrOtherStoneUser}

								{section name=i loop=$arr}
								{assign var='mode' value='stoneOtherQuarries'}
								{stone}
								{/section}

								{else}
								<br>
								<div class="alert alert-dismissible alert-danger">
									<button type="button" class="close" data-dismiss="alert">&times;</button>
									<strong>Oh snap!</strong> No other quarries have this stone.
								</div>
								{/if}
							</div>
						</div>
					</div>

				</div> <!-- End of tab content -->

			</div>
		</div> <!-- End Row -->

		<div class="row">
			<div class="col-md-12">
				<a href="https://www.marble.com/materials-category"><img src="{$_upDir}img/slabmarketads/estimate2.jpg" style="width: 100%; padding: 25px 0;"></a>

			</div>
		</div>

	</div>
</div>
<!-- END OF RIGHT SIDE CONTAINER -->

{literal}
<script type="text/javascript">
	updateQuantity();
</script>
{/literal}
