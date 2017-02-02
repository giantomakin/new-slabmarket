{if is_array($paging2) && count($paging2)>0}
<div class="pagebarUTH">Results:{$paging2.result}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        {if $paging2.page_active!=1 and $paging2.page_active!=''}
            <a href="{$_upDir}{$linkString2}/0/w">First</a>
            <a href="{$_upDir}{$linkString2}/{$paging2.page_active-2}/w">Previous</a>
        {/if}

        {section name=i loop=$paging2.pages}
            {if $paging2.page_active==$paging2.pages[i]}
                <span class="this-page">{$paging2.pages[i]}</span>
            {else}
            <a href="{$_upDir}{$linkString2}/{$paging2.pages[i]-1}/w">{$paging2.pages[i]}</a>
            {/if}
        {/section}

        {if $paging2.page_active!=$paging2.page_last}
            {if ($paging2.page_last-$paging2.page_active) > 2} 
                <span class="break">...</span> 
                <a href="{$_upDir}{$linkString2}/{$paging2.page_last-1}/w">{$paging2.page_last}</a>
            {/if}
            <a href="{$_upDir}{$linkString2}/{$paging2.page_active}/w">Next</a>
        {/if}
</div>
{/if}