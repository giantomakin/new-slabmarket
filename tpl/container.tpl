
<script type="text/javascript" src="{$_upDir}xml_js/container.js"></script>
{literal}
<script type="text/javascript">
function containerValues(quantity,price,width,height,product) {
	this.quantity=quantity;
	this.price=price;
	this.width=width;
	this.height=height;
	this.product=product;

}
var containerValuesArr = new Array();
{/literal}

{assign var='arr' value=$container.item_list}
{section name=i loop=$arr}
{literal}containerValuesArr[{/literal}{$arr[i].item}{literal}]= new containerValues({/literal}{$arr[i].quantity}{literal},{/literal}{$arr[i].price}{literal},{/literal}{$arr[i].width}{literal},{/literal}{$arr[i].height}{literal},{/literal}'{$arr[i].product_name}'{literal});{/literal}
{/section}
{literal}
</script>
{/literal}

<div class="col-sm-12">
	<h1 class="page-header">
	    {if $container.user == 1}Order from Warehouse{else}Container{/if}
	</h1>
	{if is_array($container)}

		{if $msg!=''}
			<div class="alert alert-dismissible alert-success">
			  <button type="button" class="close" data-dismiss="alert">&times;</button>
			  <strong>Well done!</strong> {$msg}.
			</div>
		{/if}
	<div class="row">
		<div class="col-sm-10">
			<table class="table table-bordered">
			  <thead>
			    <tr>
			      <th>Name</th>
			      <th>Details</th>
			      <th>Quantity</th>
			      <th>Subtotal</th>
			    </tr>
			  </thead>
			  <tbody>
			  {assign var='arr' value=$container.item_list}
			  {section name=i loop=$arr}
			    <tr>
			      <td>
			      <form id="fContainer">
					<input type="hidden" id="{$arr[i].item}" name="item">
					<p>{$arr[i].stone_name|capitalize}<br>
					<a onclick="removeItem('{$arr[i].item}')" style="cursor:pointer;">
					<img src="{$_upDir}img/remove.png" alt="" width="43" height="11" vspace="8" border="0">
					</a>
					</p>
			      </td>
			      <td>
			      	<div class="pull-right" style="font:bold 12px arial;line-height:22px;width:77px;">
			      	${$arr[i].price|string_format:"%.2f"}<br>
			      	{$arr[i].product_name}<br>
			      	{$arr[i].width}in x {$arr[i].height}in
			      	</div>
			      	<div class="pull-right" style="font:11px arial;line-height:22px;width:85px;">
			      	Price per sq.ft:<br>
			      	Thickness:<br>
			      	Dimensions:
			      	</div>
			      	<a href="{$_upDir}{$arr[i].stone_name|replace:' ':'-'|lower}" style="margin:0;padding:0;"><img src="{if $arr[i].photo!=''}{$_upDir}core/storage/slabmarket/stone/{$arr[i].photo}_t.jpg{else}{$_upDir}img/stonenophoto.png{/if}" alt="{$arr[i].stone_name}" width="50" height="50" border="0" style="margin:10px  4px 0 10px;"></a>
			      </td>
			      <td>
						<a href="#" class="btn btn-default btn-xs" role="button" name="buttonPlus" onclick="changeQuantity(1,'{$arr[i].item}');"><i class="fa fa-plus-circle" aria-hidden="true"></i> </a>
						Bundles: <span id="{$arr[i].item}quantity" style="font:bold 14px Arial;">{$arr[i].quantity}</span>
			      		<br>

			      		<a href="#" class="btn btn-default btn-xs" role="button" name="buttonMinus" onclick="changeQuantity(-1,'{$arr[i].item}');"><i class="fa fa-minus-circle" aria-hidden="true"></i> </a>	Slabs: <span id="{$arr[i].item}slabQuantity" style="font:bold 14px Arial;">{$arr[i].quantity*7}</span><br>

			      	Coverage: <span id="{$arr[i].item}coverage" style="font:bold 13px Arial;">{$arr[i].coverage|string_format:"%.2f"}</span> sq ft
			      	</div>
			      </td>
			      <td>$<span id="{$arr[i].item}subtotal">{$arr[i].subtotal|string_format:"%.2f"}</span></td>
			    </tr>
			    </form>
			   {/section}
			  </tbody>
			  <tfoot class="text-center">
			    <tr>
			      <td style="border-color:transparent;">Bundles <strong><span id="totalBundleQuantity">0</span></strong></td>
			      <td style="border-color:transparent;">Slabs <strong><span id="totalSlabQuantity">0</span></strong></td>
			      <td style="border-color:transparent;">Coverage <strong><span id="totalCoverage">0</span> sqft</strong></td>
			      <td style="border-color:transparent;">Weight <strong><span id="totalWeight">0</span> lbs</strong></td>
			    </tr>
			  </tfoot>
			</table>
			<p><strong class="pull-right">Total: $<span id="total">0</span></strong></p>
			<div class="clearfix">

			</div>
			<p class="text-center">



					{if $smarty.session.slabmarket.container.user == 1}
				     <a href="#" onclick="clearContainer()" class="btn btn-danger" role="button" >Clear Order</a>
				    {else}
				     <a href="#" onclick="clearContainer()" class="btn btn-danger" role="button">Clear Container</a>
				    {/if}
				    <a href="{$_upDir}container/continue" class="btn btn-info" role="button">Continue Shopping</a>
				    <a href="#" class="btn btn-success" role="button" onclick="checkContainer({$smarty.session.slabmarket.container.user})">Proceed to Checkout</a>


			</p>
		</div>

		<div class="col-md-2">
			{if $smarty.session.slabmarket.container.user == 1}
			<div class="cont_right">
			    <div class="cont_col1h" style="width: 140px; margin: 0; text-align: center;"><p>Order Information</p></div>
			    <div class="cont_col4h" style="width: 10px;background-position: right;"></div>
			    <div style="float:left;height:72px; width:150px;margin:0 1px 0 0; background-image: url('../../img/cont_col_bckgrd1.png');"><p style="padding: 0 5px 0 5px;"><b>Prices are for FOB (pick-up) only.<br>Slabs are stored at our local warehouses.</b></p></div>
			    <div class="b4h" style="width:150px;margin:1px 0 20px 0;"><div class="b4h_left"></div><div class="b4h_right"></div><p></p></div>
			</div>
			<div class="cont_right" style="display: none;">
			    <div class="capacity_box"><img id="capacityMeter" alt="Capacity Meter"  border="0" style="margin:35px 0 0 45px;"></div>
			</div>
			{else}

				<div class="capacity_box"><img id="capacityMeter" alt="Capacity Meter"  border="0" style="margin:35px 0 0 45px;"></div>

			{/if}
		</div>

	</div>



	<input type='hidden' id='maxweight' value=0>
	{literal}
	<script type="text/javascript">
	updateContainer();
	</script>
	{/literal}

	{else}
	<div style="font:bold 16px Arial;color:maroon;text-align:center; margin:30px;">
		Your {if $smarty.session.slabmarket.container.user == 1 || $smarty.session.slabmarket.redirect.mode == 'stoneOther'}Order{else}Container{/if} is Empty<br><br>
		  <a href="{$_upDir}container/continue" class="btn btn-info" role="button">Continue Shopping</a>
	</div>

	{/if}

</div>
