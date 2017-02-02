{include file='search.tpl'}
<div class="b2h" style="float:right;width:640px;margin:10px 0 0 0;"><div class="b2h_left"></div><div class="b2h_right"></div>
	<h1>{if $_link2 == 1}Local Warehouse{else}Supplier #{$_link2}{/if} - Slab List</h1>
</div>
	<div class="s_cont_all" style="float:right;width:640px;">
		{section name=i loop=$arr}
		{stone}
		{/section}
	</div>
<div class="g2h" style="float:right;width:640px;margin-bottom:10px;"><div class="g2h_left"></div><div class="g2h_right"></div>{assign var='linkString' value=$_link1}{include file="paging.tpl"}</div>
