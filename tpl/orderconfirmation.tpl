<script type="text/javascript" src="../xml_js/orderConfirmation.js"></script>

{assign var='step'  value=2}
<div class="b2h" style="width:800px;margin:10px 0 0 0;"><div class="b2h_left"></div><div class="b2h_right"></div>{include file='orderpath.tpl'}<h1>2. Order Confirmation</h1></div>
<div class="bckgrd800">



{literal}
<style type="text/css">
span.info_label {font: bold 13px Arial; color: #999999;} 
span.info_label_link {font: normal 12px Arial; color: #999999; margin-left: 10px;} 

div.label {padding: 5px;}
div.details {border: 1px solid #e1e1d7; background-color: #f2f2e8; text-align: center;}

table.contact_info th {text-align: right; font: normal 12px Arial; color: #85a6b0; width: 130px;}
table.contact_info td {font: normal 12px Arial; color: #666666; width: 150px;}
table.contact_info span { border-bottom: 1px solid #a3bcc3; vertical-align: bottom; padding: 3px; margin-right: 3px;}
table.contact_info div { border-bottom: 1px solid #a3bcc3; vertical-align: bottom; padding: 3px;}

td.list {border-bottom: 1px solid #FFFFFF;}

</style>
{/literal}

<br /><br />

<center>

<div style="width: 740px; margin: 0px; border: 0px solid blue;">

<table style="width: 740;" cellpadding="0" cellspacing="0" border="0">
	<tr>
		<td valign="top" style="width: 280px;">
			
			<div class="label">
				<span class="info_label">Shipping and Contact</span><span class="info_label_link">[&nbsp;<a href="{$_upDir}orderInformation">edit</a>&nbsp;]</span>
			</div>
			
			<div class="details" style="margin-right: 0px; width: 280px; padding: 5px;">
				<div style="padding: 5px;">
				<table class="contact_info" border="0" cellpadding="0" cellspacing="0">
					<tr><th><span class="info_left">Contact person:</span></th><td><div class="info_right">{$orderInfo.contact_person}</div></td></tr>
					<tr><th><span class="info_left">Company name:</span></th><td><div class="info_right">{$orderInfo.company}</div></td></tr>
					<tr><th><span class="info_left">Address:</span></th><td><div class="info_right">{$orderInfo.address1}&nbsp;{$orderInfo.address2}</div></td></tr>
					<tr><th><span class="info_left">City:</span></th><td><div class="info_right">{$orderInfo.city}</div></td></tr>
					<tr><th><span class="info_left">State:</span></th><td><div class="info_right">{$orderInfo.state}</div></td></tr>
					<tr><th><span class="info_left">Zip code:</span></th><td><div class="info_right">{$orderInfo.zip}</div></td></tr>
					<tr><th><span class="info_left">Primary phone:</span></th><td><div class="info_right">{$orderInfo.r_phone1}-{$orderInfo.r_phone2}-{$orderInfo.r_phone3} {if $orderInfo.r_phone4 != ""}Ext. {$orderInfo.r_phone4}{/if}</div></td></tr>
					<tr><th><span class="info_left">Additional phone:</span></th><td><div class="info_right">{if $orderInfo.a_phone1 != ""}{$orderInfo.a_phone1}-{$orderInfo.a_phone2}-{$orderInfo.a_phone3} {if $orderInfo.a_phone4 != ""}Ext. {$orderInfo.a_phone4}{/if}{/if}&nbsp;</div></td></tr>
					<tr><th><span class="info_left">Fax:</span></th><td><div class="info_right">{$orderInfo.fax1}-{$orderInfo.fax2}-{$orderInfo.fax3}</div></td></tr>
					<tr><th><span class="info_left">Additional email:</span></th><td><div class="info_right">{$orderInfo.email2}&nbsp;</div></td></tr>
				</table>
				</div>
			</div>
		</td>
		<td  valign="top">
			<div class="label" style="margin-left: 10px;">
				<span class="info_label">Container details</span><span class="info_label_link">[&nbsp;<a href="{$_upDir}container">edit</a>&nbsp;]</span>
			</div>
			
			<div class="" style="border: 1px solid #e1e1d7; margin-left: 10px;">
			<div style="">
			<table cellpadding="0" cellspacing="0" style="width: 100%;" border="0">
				<!--
				<tr style="background-color: #999999;">
					<th>Stone</th>
					<th colspan="2">Details</th>
					<th style="width: 100px;">Subtotal</th>
				</tr>
				-->
				{assign var='arr' value=$containerArr.item_list}
				{section name=i loop=$arr}
				<tr style="background-color: #e5e5e5;">
					<td valign="bottom" style="width: 60px;" class="list">
						<img src="{if $arr[i].photo!=''}{$_upDir}core/storage/slabmarket/stone/{$arr[i].photo}_t.jpg{else}{$_upDir}img/stonenophoto.png{/if}" alt="{$arr[i].stone_name}" width="50" height="50" border="0" style="margin: 5px;">
					</td>
					<td valign="bottom" class="list">
						<div style="font-size: 11px; padding: 5px;">
							<span style="font-size: 12px; font-weight: 500; font-face: Arial;"><b>{$arr[i].stone_name|capitalize}</b></span><br />
							Price per sq.ft: ${$arr[i].price|string_format:"%.2f"}<br />
							Thickness: {$arr[i].product_name}<br />
							Dimensions: {$arr[i].width}in x {$arr[i].height}in<br />
						</div>	
					</td>
					<td valign="bottom" class="list">
						<div style="font-size: 11px; padding: 5px;">
							Bundles: {$arr[i].quantity}<br />
							Slabs: {$arr[i].quantity*7}<br />
							Coverage: {$arr[i].coverage|string_format:"%.2f"}<br />
						</div>	
					</td>
					<td valign="bottom" style="padding: 5px; border-left: 1px solid #FFFFFF; width: 80px;" class="list"><div style="padding: 5px; font-size: 14px;">${$arr[i].subtotal|string_format:"%.2f"}</div></td>
				</tr>
				{/section}
				<tr style="background-color: #88969d">
					<td class="list" colspan="3" style="padding: 5px; font-size: 14px; color: #FFFFFF;">
						<span style="margin-right: 20px;">Bundles: <b>{$container_summary.bundle}</b></span>
						<span style="margin-right: 20px;">Slabs: <b>{$container_summary.bundle*7}</b></span>
						<span>Coverage: <b>{$container_summary.coverage}</b></span>
					</td>
					<td class="list" style="padding: 5px; border-left: 1px solid #FFFFFF;">&nbsp;</td>
				</tr>
				<tr style="background-color: #325d6a; color: #FFFFFF;">
					<td colspan="3" style="padding: 5px; text-align: right;"><b>Total:</b></td>
					<td style="padding: 5px; border-left: 1px solid #FFFFFF;"><div style="padding: 5px;"><b>${$container_summary.total|string_format:"%.2f"}</b></div></td>
				</tr>
			</table>
			</div>
			</div>
			
		</td>
	</tr>
</table>
</div>


<div style="font: bold 13px Arial; width: 740px;  border: 1px solid #e1e1d7; margin: 10px 0 5px 0; background-color: #f2f2e8;">
	<div style="padding: 10px;">
		The price quoted above does not include shipping costs. In order to give you an accurate total, one of our representatives will contact you.
	</div>
</div>
<div style="text-align: right; width: 740px;  border: 1px solid #e1e1d7; margin: 10px 0 5px 0; padding: 0px; background-color: #f2f2e8;">
	<div style="padding: 10px;">
	<form action="{$_upDir}orderConfirmation" method="POST" name="fPlaceOrder" onsubmit="return checkAgreement();">
	<input type="hidden" name="action" value="add">
		<label><input type="checkbox" id="checkAgree" name="agree" value="1">I have read, understood and agree with all terms and conditions included in <a href="{$_upDir}privacy-policy" target="_blank">Privacy Policy</a>, <a href="{$_upDir}terms-of-use" target="_blank">Terms of Use</a> and <a href="{$_upDir}terms-of-sale" target="_blank">Terms of Sale</a>.</label>
		<input type="submit" name="submit" value="Place an order" style="margin-top: 10px; font-size: 16px;">
	</form>
	</div>
</div>	
</center>
<br /><br />

<img src="{$UpDir}img/bckgrd800b.png" alt="" width="800" height="5" border="0">
</div>


