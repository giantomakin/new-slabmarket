{if is_array($paging2) && count($paging2)>0}
<ul class="pagination">


        {if $paging2.page_active!=1 and $paging2.page_active!=''}
            <li><a href="{$_upDir}{$linkString2}/0/w">First</a></li>
            <li><a href="{$_upDir}{$linkString2}/{$paging2.page_active-2}/w">Previous</a></li>
        {/if}

        {section name=i loop=$paging2.pages}
            {if $paging2.page_active==$paging2.pages[i]}
               <li class="active"><span>{$paging.pages[i]}</span></li>
            {else}
            <li><a href="{$_upDir}{$linkString2}/{$paging2.pages[i]-1}/w">{$paging2.pages[i]}</a></li>
            {/if}
        {/section}

        {if $paging2.page_active!=$paging2.page_last}
            {if ($paging2.page_last-$paging2.page_active) > 2}
                <li class="disabled"><span>...</span></li>
                <li><a href="{$_upDir}{$linkString2}/{$paging2.page_last-1}/w">{$paging2.page_last}</a></li>
            {/if}
            <li><a href="{$_upDir}{$linkString2}/{$paging2.page_active}/w">Next</a></li>
        {/if}
</ul>
{/if}
