<script type="text/javascript" src="{$_upDir}core/js/formValidate/formValidate.js"></script>
<script type="text/javascript" src="{$_upDir}xml_js/accountShipping.js"></script>

{assign var='title' value='Edit Shipping Addresses'}
{assign var='menu'  value=3}
{include file='account_start.tpl'}

{if $errMsg!=''}
<div style="text-align: center; font-weight: 600; font-size: 16px; margin: 10px 5px 2px 5px; padding: 5px; border: 2px solid red; color: greeb"><span>{$errMsg}</span></div>
<script>showform('newaddress')</script>
{/if}

<h3><a href="javascript:showform('newaddress')">Add New Address</a></h3>

<div id="newaddress" style="display:none;">
<form id='newaddform' action="{$_upDir}accountShipping" method="POST" onsubmit="return verifyupdateform('newaddform')">
<input type="hidden" name="alastid" value="{$_alastid}">
<input type="hidden" name="action" value="editShippingNew">
<input type="hidden" name="id" value="{$userid}">	


<table border="0" class="warehouseTableEdit">
	<tr>
	<th><span>Contact Person*</span></th>
	<td><div class="a"><input type="text" name="contact_person" value="{$postdata.contact_person}" size="30" maxlength="80"></div></td>
	<th><span>Address Label*</span></th><td><div>
		<input type="text" name="address_label" value="{$postdata.address_label}" size="30" maxlength="80">
	</div></td>
	</tr>
	<tr>
	<th><span>Company name*</span></th>
	<td><div><input type="text" name="company" value="{$postdata.company}" size="30" maxlength="80"></div></td>
	<th><span>Phone*</span></th><td><div>
		(<input type="text" name="r_phone1" value="{$postdata.r_phone1}" size="2" maxlength="3" style="width: 30px;">)&nbsp;
		<input type="text" name="r_phone2" value="{$postdata.r_phone2}" size="2" maxlength="3" style="width: 30px;">&nbsp;-
		<input type="text" name="r_phone3" value="{$postdata.r_phone3}" size="3" maxlength="4" style="width: 35px;">&nbsp;Ext
		<input type="text" name="r_phone4" value="{$postdata.r_phone4}" size="2" maxlength="3" style="width: 30px;">
	</div></td>
	</tr>
	<tr>
	<th><span>Address line 1*</span></th>
	<td><div><input type="text" name="address1" value="{$postdata.address1}" size="30" maxlength="80"></div></td>
	<th><span>Additional phone</span></th><td><div>
		(<input type="text" name="a_phone1" value="{$postdata.a_phone1}" size="2" maxlength="3" style="width: 30px;">)&nbsp;
		<input type="text" name="a_phone2" value="{$postdata.a_phone2}" size="2" maxlength="3" style="width: 30px;">&nbsp;-
		<input type="text" name="a_phone3" value="{$postdata.a_phone3}" size="3" maxlength="4" style="width: 35px;">&nbsp;Ext
		<input type="text" name="a_phone4" value="{$postdata.a_phone4}" size="2" maxlength="3" style="width: 30px;">
	</div></td>
	</tr>
	<tr>
	<th><span>Address line 2</span></th>
	<td><div><input type="text" name="address2" value="{$postdata.address2}" size="30" maxlength="80"></div></td>
	<th><span>Fax*</span></th><td><div>
		(<input type="text" name="fax1" value="{$postdata.fax1}" size="2" maxlength="3" style="width: 30px;">)&nbsp;
		<input type="text" name="fax2" value="{$postdata.fax2}" size="2" maxlength="3" style="width: 30px;">&nbsp;-
		<input type="text" name="fax3" value="{$postdata.fax3}" size="3" maxlength="4" style="width: 35px;">
	</div></td>
	</tr>
	<tr>
	<th><span>Zip*</span></th>
	<td><div><input type="text" name="zip" value="{$postdata.zip}" size="15" maxlength="5"></div></td>
	<th><span>Alternative email</span></th><td><div>
		<input type="text" name="email2" value="{$postdata.email2}" size="30" maxlength="80">
	</div></td>
	</tr>
	<tr>
	<th><span>City*</span></th>
	<td><div><input type="text" name="city" value="{$postdata.city}" size="30" maxlength="80"></div></td>
	<th></th><td></td>
	</tr>
	<tr>
	<th><span>State*</span></th><td><div>
		<SELECT name="state" size="1">
			{html_options options=$state selected=$postdata.state}
		</SELECT>
		</div></td>
	<th></th><td></td></tr>
</table>
<div style="margin: 10 0 0 142;">
<input type="submit" name="submit" value="Save">
<input type="button" name="cancel" value="Cancel" onclick="hideform('newaddress'); clearform('newaddform');">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Fields marked with "*" are required.
</div>
</form>
</div>
<br><br><h3>Address List</h3><br>
{section name=b loop=$list}
<table cellspacing="0" border="0" class="warehouseTable">
<tr>
	<th><span>Address Label</span></th>
	<td><div>{$list[b].address_label}</div></td>
	<th><span>Primary phone</span></th>
	<td><div>{if $list[b].r_phone1 != ""}{$list[b].r_phone1}-{$list[b].r_phone2}-{$list[b].r_phone3} {if $list[b].r_phone4 != ""}Ext. {$list[b].r_phone4}{/if}{/if}</div></td>
</tr>
<tr>
	<th><span>Contact Person</span></th>
	<td><div>{$list[b].contact_person}</div></td>
	<th><span>Alternative phone</span></th>
	<td><div>{if $list[b].a_phone1 != ""}{$list[b].a_phone1}-{$list[b].a_phone2}-{$list[b].a_phone3} {if $list[b].a_phone4 != ""}Ext. {$list[b].a_phone4}{/if}{/if}</div></td>
</tr>
<tr>
	<th><span>Company</span></th>
	<td><div>{$list[b].company}</div></td>
	<th><span>Fax</span></th>
	<td><div>{$list[b].fax1}-{$list[b].fax2}-{$list[b].fax3}</div></td>
</tr>
<tr>
	<th><span>Address line 1</span></th>
	<td><div>{$list[b].address1}</div></td>
	<th><span>State</span></th>
	<td><div>{$list[b].state}</div></td>
</tr>
<tr>
	<th><span>Address line 2</span></th>
	<td><div>{$list[b].address2}</div></td>
	<th><span>City</span></th>
	<td><div>{$list[b].city}</div></td>
</tr>
<tr>
	<th>Alternative Email</th>
	<td><div>{$list[b].email2}</div></td>
	<th><span>Zip code</span></th>
	<td><div>{$list[b].zip}</div></td>
</tr>
<tr>
	<td></td>
	<td></td>
	<th></th>
	<td></td>
</tr>
<tr>
	<td colspan="4" align="right">
	{if $list[b].default == 0}
	<form id="setdefault" action="{$_upDir}accountShipping" method="POST">
	<input type="hidden" name="action" value="setdefault">
	<input type="hidden" name="default" value="1">
	<input type="hidden" name="id" value="{$list[b].id}">
	<input type="hidden" name="address_label" value="{$list[b].address_label}">
	</form>
	<a href="javascript:document.getElementById('setdefault').submit();"><b>Make this my default</b></a><br>
	{else} <font color="green"><b>Default Address</b></font><br>{/if}
	<a href="javascript:showform('shipformdiv_{$list[b].address_label}');"><b>Edit This Address</b></a></td>
</tr>
</table>
<div id="shipformdiv_{$list[b].address_label}" style="display:none;">
<form id='shipform_{$list[b].address_label}' action="{$_upDir}accountShipping" method="POST" onsubmit="return verifyupdateform('shipform_{$list[b].address_label}')">
<input type="hidden" name="action" value="editShippingUpdate">
<input type="hidden" name="id" value="{$list[b].id}">
<input type="hidden" name="address_label_old" value="{$list[b].address_label}">
<table border="0" class="warehouseTableEdit">
	<tr>
	<th><span>Contact Person*</span></th>
	<td><div class="a"><input type="text" name="contact_person" value="{$list[b].contact_person}" size="30" maxlength="80"></div></td>
	<th><span>Address Label*</span></th><td><div>
		<input type="text" name="address_label" value="{$list[b].address_label}" size="30" maxlength="80">
	</div></td>
	</tr>
	<tr>
	<th><span>Company name*</span></th>
	<td><div><input type="text" name="company" value="{$list[b].company}" size="30" maxlength="80"></div></td>
	<th><span>Phone*</span></th><td><div>
		(<input type="text" name="r_phone1" value="{$list[b].r_phone1}" size="2" maxlength="3" style="width: 30px;">)&nbsp;
		<input type="text" name="r_phone2" value="{$list[b].r_phone2}" size="2" maxlength="3" style="width: 30px;">&nbsp;-
		<input type="text" name="r_phone3" value="{$list[b].r_phone3}" size="3" maxlength="4" style="width: 35px;">&nbsp;Ext
		<input type="text" name="r_phone4" value="{$list[b].r_phone4}" size="2" maxlength="3" style="width: 30px;">
	</div></td>
	</tr>
	<tr>
	<th><span>Address line 1*</span></th>
	<td><div><input type="text" name="address1" value="{$list[b].address1}" size="30" maxlength="80"></div></td>
	<th><span>Additional phone</span></th><td><div>
		(<input type="text" name="a_phone1" value="{$list[b].a_phone1}" size="2" maxlength="3" style="width: 30px;">)&nbsp;
		<input type="text" name="a_phone2" value="{$list[b].a_phone2}" size="2" maxlength="3" style="width: 30px;">&nbsp;-
		<input type="text" name="a_phone3" value="{$list[b].a_phone3}" size="3" maxlength="4" style="width: 35px;">&nbsp;Ext
		<input type="text" name="a_phone4" value="{$list[b].a_phone4}" size="2" maxlength="3" style="width: 30px;">
	</div></td>
	</tr>
	<tr>
	<th><span>Address line 2</span></th>
	<td><div><input type="text" name="address2" value="{$list[b].address2}" size="30" maxlength="80"></div></td>
	<th><span>Fax*</span></th><td><div>
		(<input type="text" name="fax1" value="{$list[b].fax1}" size="2" maxlength="3" style="width: 30px;">)&nbsp;
		<input type="text" name="fax2" value="{$list[b].fax2}" size="2" maxlength="3" style="width: 30px;">&nbsp;-
		<input type="text" name="fax3" value="{$list[b].fax3}" size="3" maxlength="4" style="width: 35px;">
	</div></td>
	</tr>
	<tr>
	<th><span>Zip*</span></th>
	<td><div><input type="text" name="zip" value="{$list[b].zip}" size="15" maxlength="5"></div></td>
	<th><span>Alternative email</span></th><td><div>
		<input type="text" name="email2" value="{$list[b].email2}" size="30" maxlength="80">
	</div></td>
	</tr>
	<tr>
	<th><span>City*</span></th>
	<td><div><input type="text" name="city" value="{$list[b].city}" size="30" maxlength="80"></div></td>
	<th></th><td></td>
	</tr>
	<tr>
	<th><span>State*</span></th><td><div>
		<SELECT name="state" size="1">
			{html_options options=$state selected=$list[b].state}
		</SELECT>
		</div></td>
	<td></td><td></td>
	</tr>
</table>
<div style="margin: -20 0 0 442;">
<input type="submit" value="Update"> 
<input type="button" value="Cancel" onclick="hideform('shipformdiv_{$list[b].address_label}')">
</div>
</form>
<div style="margin: 0 0 0 505;">
<form action="{$_upDir}accountShipping" method="POST" onsubmit="return verifyDelete()">
<input type="hidden" name="id" value="{$list[b].id}">
<input type="hidden" name="address_label_old" value="{$list[b].address_label}">
<input type="hidden" name="action" value="delete">
<input type="submit" value="Delete">
</form>
</div>
</div>
<hr>
{/section}

{if $errMsg!='' && strpos($errMsg,'duplicate') !== false}
<script>showform('newaddress')</script>
{/if}

{include file='account_end.tpl'}