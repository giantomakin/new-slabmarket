{assign var='step'  value=1}
<div class="b2h" style="width:800px;margin:10px 0 0 0;"><div class="b2h_left"></div><div class="b2h_right"></div>{include file='orderpath.tpl'}<h1>1. Order Information</h1></div>
<div class="bckgrd800">
<div style="padding:20px 0 0 50px;"></div>
		
<center>	

<div style="font: bold 13px Arial; border: 1px solid #e1e1d7; background-color: #f2f2e8; width: 740px; margin-bottom:10px;">
	<div style="padding: 10px;">In order to provide you with an accurate quote, please fill out your contact and shipping information below:</div>
</div>

{if $errorMsg!=''}
<div style="text-align: center; font-weight: 600; font-size: 16px; margin: 10px 5px 10px 5px; padding: 5px; border: 2px solid red; color: red">
{$errorMsg}
</div>
{/if}

<div style="border: 1px solid #e1e1d7; background-color: #f2f2e8; width: 740px; margin-bottom:10px;">		
	<div style="padding: 10px;">
		<table width="500" border="0" cellpadding="2" align="center">
		<form action="{$_upDir}orderInformation" name="orderinfo" method="POST">
		<input type="hidden" name="alastid" value="{$_alastid}">
		<input type="hidden" name="action" value="edit">
		<input type="hidden" name="id" value="{$data.id}">
			<tr>
				<td><p class="forma">Change Address</p></td>
				<td><SELECT name="address_select" id="address_select" size="1" onchange="window.location='/orderInformation/1/'+this.options[this.selectedIndex].value">
						{html_options options=$address_list selected=$data.address_label}
					</SELECT></td
			</tr>	
			<tr>
				<td><p class="forma">Contact Person*</p></td>
				<td><input type="text" name="contact_person" value="{$data.contact_person}" size="50" maxlength="80"></td>
			</tr>
			<tr>
				<td><p class="forma">Company name*</p></td>
				<td><input type="text" name="company" value="{$data.company}" size="50" maxlength="80"></td>
			</tr>
			<tr>
				<td><p class="forma">Address*</p></td>
				<td><input type="text" name="address1" value="{$data.address1}" size="50" maxlength="80"></td>
			</tr>
			<tr>
				<td><p class="forma">Address 2</p></td>
				<td><input type="text" name="address2" value="{$data.address2}" size="50" maxlength="80"></td>
			</tr>
			<tr>
				<td><p class="forma">Zip Code*</p></td>
				<td><input type="text" name="zip" value="{$data.zip}" size="15" maxlength="5"></td>
			</tr>
			<tr>
				<td><p class="forma">City*</p></td>
				<td><input type="text" name="city" value="{$data.city}" size="50" maxlength="80"></td>
			</tr>
			<tr>
				<td><p class="forma">State*</p></td>
				<td>
					<SELECT name="state" size="1">
						{html_options options=$state selected=$data.state}
					</SELECT>
				</td>
			</tr>
			<tr>
				<td><p class="forma">Phone*</p></td>
				<td>
					<p>
						(<input type="text" name="r_phone1" value="{$data.r_phone1}" size="2" maxlength="3">)&nbsp;
						<input type="text" name="r_phone2" value="{$data.r_phone2}" size="2" maxlength="3">&nbsp;-
						<input type="text" name="r_phone3" value="{$data.r_phone3}" size="3" maxlength="4">&nbsp;Ext
						<input type="text" name="r_phone4" value="{$data.r_phone4}" size="2" maxlength="3">
					</p>
				</td>
			</tr>
			<tr>
				<td><p class="forma">Additional Phone</p></td>
				<td>
					<p>
						(<input type="text" name="a_phone1" value="{$data.a_phone1}" size="2" maxlength="3">)&nbsp;
						<input type="text" name="a_phone2" value="{$data.a_phone2}" size="2" maxlength="3">&nbsp;-
						<input type="text" name="a_phone3" value="{$data.a_phone3}" size="3" maxlength="4">&nbsp;Ext
						<input type="text" name="a_phone4" value="{$data.a_phone4}" size="2" maxlength="3">
					</p>
				</td>
			</tr>
			<tr>
				<td><p class="forma">Fax</p></td>
				<td>
					<p>
						(<input type="text" name="fax1" value="{$data.fax1}" size="2" maxlength="3">)&nbsp;
						<input type="text" name="fax2" value="{$data.fax2}" size="2" maxlength="3">&nbsp;-
						<input type="text" name="fax3" value="{$data.fax3}" size="3" maxlength="4">
					</p>
				</td>
			</tr>
			<tr>
				<td><p class="forma">Additional email</p></td>
				<td><input type="text" name="email2" value="{$data.email2}" size="50" maxlength="80"></td>
			</tr>
		</table>
	</div>
</div>
<div style="text-align: right; border: 1px solid #e1e1d7; background-color: #f2f2e8; width: 740px; margin-bottom:10px;">
	<div style="padding: 10px;">
		<input type="submit" name="submit" value="Proceed" style="font-size: 16px;">
		</form>
	</div>
</div>


</center>

<img src="{$_upDir}img/bckgrd800b.png" alt="" width="800" height="5" border="0">
</div>