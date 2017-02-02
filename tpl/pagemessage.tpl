{if is_array($msg)}
{if $msg.type=='info'}
	{assign var='color' value='#8cabda'}
	{assign var='textcolor' value='#3466b0'}
{elseif $msg.type=='error'}
	{assign var='color' value='#e86b74'}
	{assign var='textcolor' value='#bf3b45'}
{elseif $msg.type=='ok'}
	{assign var='color' value='#88d483'}
	{assign var='textcolor' value='#4ab343'}
{/if}




{if $msg.type=='info'}
<div class="alert alert-dismissible alert-info">
	<button type="button" class="close" data-dismiss="alert">&times;</button>
	<strong>Heads up!</strong> This <a href="#" class="alert-link"> {$msg.text}.
</div>
{elseif $msg.type=='error'}
<div class="alert alert-dismissible alert-danger">
	<button type="button" class="close" data-dismiss="alert">&times;</button>
	<strong>Oh snap!</strong> {$msg.text}.
</div>
{elseif $msg.type=='ok'}
<div class="alert alert-dismissible alert-success">
	<button type="button" class="close" data-dismiss="alert">&times;</button>
	<strong>Well done!</strong> {$msg.text}.
</div>
{/if}


{/if}



{*

*}
