{assign var='title' value='Account info'}
{assign var='menu'  value=1}
{include file='account_start.tpl'}


<table border="0" style="width: 100%">
<tr>
<td>

{if $_userInfo.type==1}
Seller Account
<table cellspacing="0" border="0" class="warehouseTable">
	<tr><th><span>Company name</span></th><td><div>{$arrUser.name}</div></td></tr>
	<tr><th><span>Port name</span></th><td><div>{$arrUser.port_name}</div></td></tr>
	<tr><th><span>Contact person</span></th><td><div>{$arrUser.contact_person}</div></td></tr>
	<tr><th><span>Country</span></th><td><div>{$countryArr[$arrUser.country]}</div></td></tr>
	<tr><th><span>Region</span></th><td><div>{$arrUser.region}</div></td></tr>
	<tr><th><span>City</span></th><td><div>{$arrUser.city}</div></td></tr>
	<tr><th><span>Postal code</span></th><td><div>{$arrUser.postal_code}</div></td></tr>
	<tr><th><span>Address line 1</span></th><td><div>{$arrUser.address1}</div></td></tr>
	<tr><th><span>Address line 2</span></th><td><div>{$arrUser.address2}&nbsp;</div></td></tr>
	<tr><th><span>Primary phone</span></th><td><div>{$arrUser.phone1}</div></tr>
	<tr><th><span>Alternative phone</span></th><td><div>{$arrUser.phone2}&nbsp;</div></td></tr>
	<tr><th><span>Fax</span></th><td><div>{$arrUser.fax}&nbsp;</div></td></tr></td>
</table>
{else}
Buyer Account
<table cellspacing="0" border="0" class="warehouseTable">
	<tr><th><span>Contact Person</span></th><td><div>{$arrUser.contact_person}</div></td></tr>
	<tr><th><span>Company</span></th><td><div>{$arrUser.company}</div></td></tr>
	<tr><th><span>Address line 1</span></th><td><div>{$arrUser.address1}</div></td></tr>
	<tr><th><span>Address line 2</span></th><td><div>{$arrUser.address2}</div></td></tr>
	<tr><th><span>State</span></th><td><div>{$arrUser.state}</div></td></tr>
	<tr><th><span>City</span></th><td><div>{$arrUser.city}</div></td></tr>
	<tr><th><span>Zip code</span></th><td><div>{$arrUser.zip}</div></td></tr>
	<tr><th><span>Primary phone</span></th><td><div>
	{if $arrUser.r_phone1 != ""}
	{$arrUser.r_phone1}-{$arrUser.r_phone2}-{$arrUser.r_phone3} {if $arrUser.r_phone4 != ""}Ext. {$arrUser.r_phone4}{/if}
	{/if}
	</div></tr>
	<tr><th><span>Alternative phone</span></th><td><div>
	{if $arrUser.a_phone1 != ""}
	{$arrUser.a_phone1}-{$arrUser.a_phone2}-{$arrUser.a_phone3} {if $arrUser.a_phone4 != ""}Ext. {$arrUser.a_phone4}{/if}
	{/if}
	</div></td></tr>
	<tr><th><span>Fax</span></th><td><div>{$arrUser.fax1}-{$arrUser.fax2}-{$arrUser.fax3}</div></td></tr></td>
</table>
{/if}


</td>
<td valign="top">

<div style="margin-left: 40px; font-size: 16px; margin-top: 5px;">
	<span style=" font-weight: 500; font-size: 18px;">{$_userInfo.email}</span><br /><br />
	<a href="{$_upDir}accountProfile" style="color:black; line-height: 25px;">Edit Profile</a><br />
	{if $_userInfo.type==0}<a href="{$_upDir}accountShipping" style="color:black; line-height: 25px;">Edit Shipping Addresses</a><br />{/if}
	<a href="{$_upDir}accountSettings" style="color:black; line-height: 25px;">Change settings</a><br />	
</div>

</td>
</tr>
</table>
<br />

{include file='account_end.tpl'}