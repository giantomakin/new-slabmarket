{if is_array($paging) && count($paging)>0}
<ul class="pagination">
	<!-- <p>{$paging.result}</p> -->
	{if $paging.page_active!=1 and $paging.page_active!=''}
	<li><a href="{$_upDir}{$linkString}/0">First</a></li>
	<li><a href="{$_upDir}{$linkString}/{$paging.page_active-2}">Previous</a></li>
	{/if}

	{section name=i loop=$paging.pages}
	{if $paging.page_active==$paging.pages[i]}
	<li class="active"><span>{$paging.pages[i]}</span></li>
	{else}
	<li><a href="{$_upDir}{$linkString}/{$paging.pages[i]-1}">{$paging.pages[i]}</a></li>
	{/if}
	{/section}

	{if $paging.page_active!=$paging.page_last}
	{if ($paging.page_last-$paging.page_active) > 2}
	<li class="disabled"><span>...</span></li>
	<li><a href="{$_upDir}{$linkString}/{$paging.page_last-1}">{$paging.page_last}</a></li>
	{/if}
	<li><a href="{$_upDir}{$linkString}/{$paging.page_active}">Next</a></li>
	{/if}
</ul>
{/if}
