<script type="text/javascript" src="{$_upDir}core/js/passwordStrength/meter.js"></script>
<script type="text/javascript" src="{$_upDir}core/js/formValidate/formValidate.js"></script>
<script type="text/javascript" src="{$_upDir}xml_js/registration.js"></script>

{if $accountType==1}
<div class="b2h" style="width:800px;margin:10px 0 10px 0;"><div class="b2h_left"></div><div class="b2h_right"></div><h1>Create Seller Account</h1></div>
{elseif $accountType==0}
<div class="b2h" style="width:800px;margin:10px 0 10px 0;"><div class="b2h_left"></div><div class="b2h_right"></div><h1>Create Buyer Account</h1></div>
{/if}


<div style="float:right;width:330px;">
	<div class="g4h" style="float:right;width:330px;clear:none;"><div class="g4h_left"></div><div class="g4h_right"></div><p>Already have an account?</p></div>
	<div class="cont_box" style="float:right;clear:both;width:330px;background-image: url({$_upDir}img/contact_bckgrd2.png);">
	
	<p style="text-align:center;font: 14px Arial;padding:30px;margin:0;">If you already have a Slabmarket Account, you can sign in <a href="{$_upDir}login">here</a>.</p>
	</div>
	<div class="g2h" style="float:right;width:330px;"><div class="g2h_left"></div><div class="g2h_right"></div></div>
</div>

<div style="float:left;width:450px;margin-bottom:10px;">
	<div class="g4h" style="width:450px;clear:none;"><div class="g4h_left"></div><div class="g4h_right"></div><p>Required information for Slabmarket account</p></div>
	<div class="cont_box" style="float:left;clear:none;width:450px;background-image: url({$_upDir}img/contact_bckgrd1.png);">
	
		<table border="0" cellspacing="0" cellpadding="0" style="font:12px Arial;">
		<form action="{$_upDir}registration" method="POST" id="fRegister" onsubmit="return checkForm();">
		<input type="hidden" name="action" value="register">	
		<input type="hidden" name="alastid" value="{$_alastid}">	
			<tr>
				<td></td>
				<td><div id="registerError" style="display: none; color: red; margin: 5px;"></div></td>
			</tr>
			<tr>
				<td nowrap><p>Email address*</p></td>
				<td><input type="text" name="email1" value="{$data.email1}" size="40" maxlength="80"></td>
			</tr>
			<tr>
				<td nowrap><p>Confirm email address*</p></td>
				<td><input type="text" name="email2" value="{$data.email2}" size="40" maxlength="80"></td>
			</tr>
			<tr><td></td><td><p style="color:#666;font-size:11px;">Minimum of 6 characters including digits.</p></td></tr>
			<tr>
				<td valign="top" nowrap><p>Password*</p></td>
				<td><input type="password" name="pass1" id="pass1"  value="{$data.pass1}" size="40" maxlength="20" onkeyup="updateStrength(this.value);" onblur="updateStrength(this.value);">
					<img src="{$_upDir}core/js/passwordStrength/img/begin.gif" id="strength" border="0" align="top" />
					</td>
			</tr>
			<tr>
				<td nowrap><p>Confirm password*</p></td>
				<td><input type="password" name="pass2" value="{$data.pass2}" size="40" maxlength="20"></td>
			</tr>
			<tr>
				<td nowrap></td>
				<td>
					<p style="text-align:;color:#555d69;">
						<label><input type="checkbox" name="remember" value="1"><span style="color:#666;font-size:11px;">Remember me on this computer.<br>(*required fields).</span></label>
					</p>
				</td>
			</tr>
			<tr>
				<td colspan="2"><hr></td>
			</tr>
			<tr>
				<td nowrap valign="top"><p>Word Verification:</p></td>
				<td>
					<img src="{$_upDir}{$captchaArr.dir}{$captchaArr.fileName}"><br />
					<span style="color:#555d69;font-size:11px;">Type the characters you see in the picture below.<br> The code is not case sensitive<br>
					<input type="password" name="{$captchaArr.formName}" size="15" maxlength="4">
					</span>
				</td>
			</tr>
			<tr>
				<td nowrap valign="top"></td>
				<td>
					<span style="color:#555d69;font-size:11px;">By clicking on 'I accept' below you are agreeing to the <a href="">Terms of Service</a> above and the <a href="">Privacy Policy</a>.</span>
					<br /><br />
				</td>
			</tr>
			<tr>
				<td align="right">
				</td>
				<td><input type="submit" name="submit" value="I accept. Create my account">
				</td></form>
			</tr>
		</table>
		<br>
		<br>
		
	</div>
	<div class="g2h" style="width:450px;"><div class="g2h_left"></div><div class="g2h_right"></div></div>
</div>


{literal}
<script language="javascript">
{/literal}
{if $data.pass1!=''}{literal}
updateStrength('{/literal}{$data.pass1}{literal}');{/literal}
{/if}
{if $errMsg!=''}{literal}
showError('{/literal}{$errMsg}{literal}');{/literal}
{/if}
{literal}
</script>
{/literal}
