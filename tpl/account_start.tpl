<script type="text/javascript" src="{$_upDir}xml_js/account.js"></script>
<LINK REL="stylesheet" HREF="{$_upDir}css/account.css" TYPE="text/css">
<div class="b2h" style="width:800px;margin:10px 0 0 0;"><div class="b2h_left"></div><div class="b2h_right"></div><h1>Account #{$userid}</h1></div>
<div class="bckgrd800">

<ul class="toplist2" style="float:none;">
		<li><a href="{$_upDir}account" title="General" {if $_link1=="account"}class="actual"{/if} style="margin-left:0;">Account Info</a></li>
		{if $_userInfo.type==1}
		<li><a href="{$_upDir}accountInventory" title="Inventory" {if $_link1=="accountInventory"}class="actual"{/if}>Inventory</a></li>
		{/if}
		<li><a href="{$_upDir}accountOrders" title="Orders" {if $_link1=="accountOrders"}class="actual"{/if}>Orders</a></li>
</ul>
<div style="background-color: #dedddd; padding: 7px 7px 7px 10px; font-size: 20px;"><br><br>{$title}</div>
<br style="clear:both;">
