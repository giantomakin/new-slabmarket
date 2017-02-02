<div class="b2h" style="width:800px;margin:10px 0 0	 0;"><div class="b2h_left"></div><div class="b2h_right"></div><h1>Account Verification</h1></div>
<div class="bckgrd800" style="margin-bottom:10px;">
<img src="{$_upDir}img/lolek.jpg" alt="" width="183" height="191" hspace="10" vspace="45" border="0" align="left">
{if $action=='resend'}
	<div style="color:green;font:14px Arial;text-align:center;padding:20px">Email has been sent</div><br />
{/if}
{if $action=='verify'}
	{if $err==0}
		<div style="color:green;font:14px Arial;text-align:center;padding:20px">Email has been verified</div><br />
		<a href="{$_upDir}account">Continue</a>
	{/if}
	{if $err==1}
		<div style="color:red;font:14px Arial;text-align:center;padding:20px">Error: sth went wrong</div>
	{/if}
	<br /><br />
{else}
	<div style="text-align:center;padding:40px 0 80px 0;margin:0;">
	<p style="font:12px Arial;text-align:center;padding:20px;line-height:20px;">In order to verify that the email address associated with your account is correct, 
	we have sent an email message to <b>{$email}</b>. To activate your Slabmarket account, please access your email and click on the link provided.</p>
	<br />
	<a href="{$_upDir}verification/resend" style="color:green;font:bold 14px Arial;">Re-Send Verification Email</a>
	</div>
{/if}
<img src="{$UpDir}img/bckgrd800b.png" alt="" width="800" height="5" border="0">
</div>

<br /><br />
{if $msgCode!=''}
	msgCode=1<br />
	proceed to place an order<br />
{/if}