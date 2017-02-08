{assign var='step'  value=3}

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

<div class="col-sm-12">

	<div class="panel panel-default">
		<div class="panel-heading">
			<h3 class="">How to Buy Slabs...</h3>
		</div>
		<div class="panel-body">

			{include file='orderpath.tpl'}

			<h3 class="page-header">
				Order Confirmation
			</h3>
			<div class="alert alert-dismissible alert-info">
				<button type="button" class="close" data-dismiss="alert">&times;</button>
				<p>Thank you for your order request. We will contact you to discuss the details of your order and give you the total price, including costs of delivery. Should you have any questions, or would like to change your order, use the CONTACT PAGE.</p>
			</div>
			<div class="row">
				<div class="col-md-4">
					<p><span class="info_label">Shipping and Contact</span><span class="info_label_link">[&nbsp;<a href="{$_upDir}orderInformation">edit</a>&nbsp;]</span></p>

					<table class="table table-striped">
						<tbody>
							<tr><td>Contact person:{$orderInfo.contact_person}</td></tr>
							<tr><td>Company name:{$orderInfo.company}</td></tr>
							<tr><td>Address:{$orderInfo.address1}&nbsp;{$orderInfo.address2}</td></tr>
							<tr><td>City:{$orderInfo.city}</td></tr>
							<tr><td>State:{$orderInfo.state}</td></tr>
							<tr><td>Zip code:{$orderInfo.zip}</td></tr>
							<tr><td>Primary phone:{$orderInfo.r_phone1}-{$orderInfo.r_phone2}-{$orderInfo.r_phone3} {if $orderInfo.r_phone4 != ""}Ext. {$orderInfo.r_phone4}{/if}</td></tr>
							<tr><td>Additional phone:{if $orderInfo.a_phone1 != ""}{$orderInfo.a_phone1}-{$orderInfo.a_phone2}-{$orderInfo.a_phone3} {if $orderInfo.a_phone4 != ""}Ext. {$orderInfo.a_phone4}{/if}{/if}&nbsp;</td></tr>
							<tr><td>Fax:{$orderInfo.fax1}-{$orderInfo.fax2}-{$orderInfo.fax3}</td></tr>
							<tr><td>Additional email:{$orderInfo.email2}&nbsp;</td></tr>
						</tbody>
					</table>

				</div>
				<div class="col-md-8">
					<p><span class="info_label">Container details</span><span class="info_label_link">[&nbsp;<a href="{$_upDir}container">edit</a>&nbsp;]</span></p>
					<table class="table table-striped">
						<tbody>
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
							<tr>
								<td colspan="3" style="padding: 5px; text-align: right;"><b>Total:</b></td>
								<td style="padding: 5px; border-left: 1px solid #FFFFFF;" width=80><div><b>${$container_summary.total|string_format:"%.2f"}</b></div></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>


			<div class="well text-center">

					<p class="text-center">Please print this page for your records.</p>
					<FORM>
					<INPUT TYPE="button" value="Print this page" onClick="window.print()">
					</FORM>

			</div>

			<div clas="well">
				<div style="line-height: 20px;" class="pull-right">
					<a href="{$_upDir}account">Go to your account</a><br />
					<a href="{$_upDir}all-slabs">See all slabs</a><br />
					<a href="{$_upDir}">Home page</a><br />
				</div>
			</div>


		</div>



	</div>

</div>



