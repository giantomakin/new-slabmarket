<div class="b2h" style="width:800px;margin-top:10px;"><div class="b2h_left"></div><div class="b2h_right"></div><h1>Order Confirmation</h1></div>
<div class="bckgrd800">

<div class="cont_left" style="margin:0 0 0 80px;">
	<div class="cont_col1h" style="background-image:none;">Name</div>
	<div class="cont_col2h" style="background-color:transparent;">Details</div>
	<div class="cont_col3h" style="background-color:transparent;">Quantity</div>
	<div class="cont_col4h" style="background-image:none;">Subtotal</div>
	{assign var='arr' value=$container.item_list}
	{section name=i loop=$arr}
	<hr>
	<div class="cont_col1" style="background-image:none;"><p>{$arr[i].stone_name|capitalize}</p></div>
	<div class="cont_col2" style="background-image:none;">
		<div style="float:right;font:bold 12px arial;line-height:22px;width:77px;">
		${$arr[i].price|string_format:"%.2f"}<br>
		{$arr[i].product_name}<br>
		{$arr[i].width}in x {$arr[i].height}in
		</div>
		<div style="float:right;font:11px arial;line-height:22px;width:85px;">
		Price per sq.ft:<br>
		Thickness:<br>
		Dimensions:
		</div>
		<a href="{$_upDir}{$arr[i].stone_name|replace:' ':'-'|lower}" style="margin:0;padding:0;"><img src="{if $arr[i].photo!=''}{$_upDir}core/storage/slabmarket/stone/{$arr[i].photo}_t.jpg{else}{$_upDir}img/stonenophoto.png{/if}" alt="{$arr[i].stone_name}" width="50" height="50" border="0" style="margin:10px  4px 0 10px;"></a>
	</div>
	<div class="cont_col3" style="background-image:none;">
		<div class="cont_quant">
			<div class="cont_buttons">
			</div>
		Bundles: <span id="{$arr[i].item}quantity" style="font:bold 14px Arial;">{$arr[i].quantity}</span><br>
		Slabs: <span id="{$arr[i].item}slabQuantity" style="font:bold 14px Arial;">{$arr[i].quantity*7}</span><br>
		Coverage: <span id="{$arr[i].item}coverage" style="font:bold 13px Arial;">{$arr[i].coverage|string_format:"%.2f"}</span> sq ft
		</div>
	</div>
	<div class="cont_col4" style="background-image:none;"><p>$<span id="{$arr[i].item}subtotal">{$container_summary.total}</span></p></div>
	{/section}
	
	<div class="cont_subtotal">
		<div class="inside" style="margin-left:50px;">Bundles: <strong><span id="totalBundleQuantity">0</span></strong></div>
		<div class="inside">Slabs: <strong><span id="totalSlabQuantity">0</span></strong></div>
		<div class="inside" style="width:200px;">Coverage: <strong><span id="totalCoverage">0</span> sqft</strong></div>
	</div>
	<div class="b4h" style="width:635px;margin:1px 0 20px 0;"><div class="b4h_left"></div><div class="b4h_right"></div><p>Total: $<span id="total">0</span></p></div>
	
	<a href="{$_upDir}order" style="cursor:pointer;"><img src="{$_upDir}img/checkout.png" alt="Checkout" width="167" height="26" hspace="10" vspace="10" border="0" align="right"></a>
	<img src="{$_upDir}img/continue.png" alt="Continue Shopping" width="167" height="26" hspace="10" vspace="10" border="0" align="right">
<p style="margin:0 20px 0 20px;font:12px Arial;padding:20px;"><br><br><br>The price quoted above does not include shipping costs. In order to give you an accurate total, one of our representatives will contact you. You can specify the preferred way of contacting you in the box below.</p>
</div>





<img src="{$UpDir}img/bckgrd800b.png" alt="" width="800" height="5" border="0">
</div>





