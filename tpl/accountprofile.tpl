<script type="text/javascript" src="{$_upDir}core/js/formValidate/formValidate.js"></script>
<script type="text/javascript" src="{$_upDir}xml_js/accountSellerEdit.js"></script>
<script type="text/javascript" src="{$_upDir}xml_js/accountWarehouseEdit.js"></script>

{assign var='title' value='Edit Profile Information'}
{assign var='menu'  value=3}
{include file='account_start.tpl'}

{if $msg!=''}
<div style="text-align: center; font-weight: 600; font-size: 16px; margin: 10px 5px 2px 5px; padding: 5px; border: 2px solid red; color: greeb"><span>{$msg}</span></div>
{/if}



{if $data.id_slab_core_user==''}
<div style="font-size: 14px; padding: 10px; border: 2px solid green; text-align: center; margin: 0px 20px 20px 20px;">Please fill out the company information to get full access to the Seller's Account.</div>
{/if}

<div id="divError" style="display: none; color: red;"></div>


{if $_userInfo.type==1}
<form action="{$_upDir}accountProfile" method="POST" id="fEditSeller" onsubmit="return checkForm();">
<input type="hidden" name="action" value="editSeller">	
<input type="hidden" name="id" value="{$data.id_slab_core_user}">
<input type="hidden" name="referrer" value="{$referrer}">
<input type="hidden" name="alastid" value="{$_alastid}">

<table border="0" class="warehouseTableEdit">
	<tr><th><span>Company name*</span></th><td><div class="a"><input type="text" name="name" size="40" maxlength="40" value="{$data.name}"></div></td></tr>
	<tr><th><span>Port name*</span></th><td><div><input type="text" name="port_name" size="40" maxlength="40" value="{$data.port_name}"></div></td></tr>
	<tr><th><span>Contact person*</span></th><td><div><input type="text" name="contact_person" size="40" maxlength="40" value="{$data.contact_person}"></div></td></tr>
	<tr><th><span>Country*</span></th><td><div>{assign var='countryCode' value=$arrSlabUser.country}{$countryArr[$countryCode]}<select name="country"><option name="0"></option>{html_options options=$countryArr selected=$data.country}</select></div></td></tr>
	<tr><th><span>Region*</span></th><td><div><input type="text" name="region" size="40" maxlength="40" value="{$data.region}"></div></td></tr>
	<tr><th><span>City*</span></th><td><div><input type="text" name="city" size="40" maxlength="40" value="{$data.city}"></div></td></tr>
	<tr><th><span>Postal code*</span></th><td><div><input type="text" name="postal_code" size="40" maxlength="40" value="{$data.postal_code}"></div></td></tr>
	<tr><th><span>Address line 1*</span></th><td><div><input type="text" name="address1" size="40" maxlength="40" value="{$data.address1}"></div></td></tr>
	<tr><th><span>Address line 2</span></th><td><div><input type="text" name="address2" size="40" maxlength="40" value="{$data.address2}"></div></td></tr>
	<tr><th><span>Primary phone*</span></th><td><div><input type="text" name="phone1" size="40" maxlength="40" value="{$data.phone1}"></div></td></tr>
	<tr><th><span>Alternative phone</span></th><td><div><input type="text" name="phone2" size="40" maxlength="40" value="{$data.phone2}"></div></td></tr>
	<tr><th><span>Fax</span></th><td><div><input type="text" name="fax" size="40" maxlength="40" value="{$data.fax}"></div></td></tr></td>
</table>

<div style="margin: 10 0 0 142;">
{if $data.id_slab_core_user!=''}	
<input type="submit" name="submit" value="Update profile">
{else}
<input type="submit" name="submit" value="I accept. Update profile">
{/if}
<input type="button" name="cancel" value="cancel" onclick="cancelWarehouseEdit();">
</div>
</form>

{else}


<form action="{$_upDir}accountProfile" method="POST">
<input type="hidden" name="alastid" value="{$_alastid}">
<input type="hidden" name="action" value="editBuyer">
<input type="hidden" name="id" value="{$data.id_slab_core_user}">	


<table border="0" class="warehouseTableEdit">
	<tr><th><span>Contact Person*</span></th><td><div class="a"><input type="text" name="contact_person" value="{$data.contact_person}" size="50" maxlength="80"></div></td></tr>
	<tr><th><span>Company name*</span></th><td><div><input type="text" name="company" value="{$data.company}" size="50" maxlength="80"></div></td></tr>
	<tr><th><span>Address line 1*</span></th><td><div><input type="text" name="address1" value="{$data.address1}" size="50" maxlength="80"></div></td></tr>
	<tr><th><span>Address line 2</span></th><td><div><input type="text" name="address2" value="{$data.address2}" size="50" maxlength="80"></div></td></tr>
	<tr><th><span>Zip*</span></th><td><div><input type="text" name="zip" value="{$data.zip}" size="15" maxlength="5"></div></td></tr>
	<tr><th><span>City*</span></th><td><div><input type="text" name="city" value="{$data.city}" size="50" maxlength="80"></div></td></tr>
	<tr><th><span>State*</span></th><td><div>
		<SELECT name="state" size="1">
			{html_options options=$state selected=$data.state}
		</SELECT>
		</div></td></tr>
	<tr><th><span>Phone*</span></th><td><div>
		(<input type="text" name="r_phone1" value="{$data.r_phone1}" size="2" maxlength="3" style="width: 30px;">)&nbsp;
		<input type="text" name="r_phone2" value="{$data.r_phone2}" size="2" maxlength="3" style="width: 30px;">&nbsp;-
		<input type="text" name="r_phone3" value="{$data.r_phone3}" size="3" maxlength="4" style="width: 35px;">&nbsp;Ext
		<input type="text" name="r_phone4" value="{$data.r_phone4}" size="2" maxlength="3" style="width: 30px;">
	</div></td></tr>
	<tr><th><span>Additional phone</span></th><td><div>
		(<input type="text" name="a_phone1" value="{$data.a_phone1}" size="2" maxlength="3" style="width: 30px;">)&nbsp;
		<input type="text" name="a_phone2" value="{$data.a_phone2}" size="2" maxlength="3" style="width: 30px;">&nbsp;-
		<input type="text" name="a_phone3" value="{$data.a_phone3}" size="3" maxlength="4" style="width: 35px;">&nbsp;Ext
		<input type="text" name="a_phone4" value="{$data.a_phone4}" size="2" maxlength="3" style="width: 30px;">
	</div></td></tr>
	<tr><th><span>Fax*</span></th><td><div>
		(<input type="text" name="fax1" value="{$data.fax1}" size="2" maxlength="3" style="width: 30px;">)&nbsp;
		<input type="text" name="fax2" value="{$data.fax2}" size="2" maxlength="3" style="width: 30px;">&nbsp;-
		<input type="text" name="fax3" value="{$data.fax3}" size="3" maxlength="4" style="width: 35px;">
	</div></td></tr>
	<tr><th><span>Alternative email</span></th><td><div>
		<input type="text" name="email2" value="{$data.email2}" size="50" maxlength="80">
	</div></td></tr>
</table>
<div style="margin: 10 0 0 142;">
{if $data.id_slab_core_user!=''}	
<input type="submit" name="submit" value="Update profile">
{else}
<input type="submit" name="submit" value="I accept. Update profile">
{/if}
<input type="button" name="cancel" value="cancel" onclick="cancelWarehouseEdit();">
</div>
</form>


{/if}



	
{include file='account_end.tpl'}