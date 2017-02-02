{assign var='title' value='General account information'}
{assign var='menu'  value=1}
{include file='account_start.tpl'}

{if $msg!=''}
<div style="text-align: center; font-weight: 600; font-size: 16px; margin: 10px 5px 2px 5px; padding: 5px; border: 2px solid red; color: red">
{$msg}
</div>
{/if}

<div id="log_res" style="display:none">Updating Data</div>
<br />
<div style="float:left;">
<form action="accountSettings" method="post" name="emailchange" id="emailchange">
<table cellspacing="0" border="0" class="warehouseTable">
	<tr><td colspan="2"><div class="title">Change email</div></td></tr>
	<tr><th><span>Current Email*</span></th><td><input type="text" name="currentemail"></td></tr>
	<tr><th><span>Password*</span></th><td><input type="password" name="password"></td></tr>
	<tr><th><span>New Email*</span></th><td><input type="text" name="newemail"></td></tr>
	<tr><th><span>Re-enter New Email*</span></th><td><input type="text" name="newemail2"></td></tr>
	<tr><td colspan="2" align="center"><input type="submit" name="emailchange" value="SUBMIT" class="bt_submit" style="width:73px;height:28px;margin:10px;border:none;cursor:pointer;"></td></tr>
</table>
</form>
</div>
<div style="float:right;">
<form action="accountSettings" method="post" name="passwordchange" id="passwordchange">
<table cellspacing="0" border="0" class="warehouseTable">
	<tr><td colspan="2"><div class="title">Change password</div></td></tr>
	<tr><th><span>Current Password*</span></th><td><input type="password" name="oldpassword"></td></tr>
	<tr><th><span>New Password*</span></th><td><input type="password" name="newpassword"></td></tr>
	<tr><th><span>Confirm&nbsp;New&nbsp;Password*</span></th><td><input type="password" name="newpassword2"></td></tr>
	<tr><td colspan="2" align="center">&nbsp;</td></tr>
	<tr><td colspan="2" align="center"><input type="submit" name="passwordchange" value="SUBMIT" class="bt_submit" style="width:73px;height:28px;margin:10px;border:none;cursor:pointer;"></td></tr>
</table>
</form>
</div>

{include file='account_end.tpl'}