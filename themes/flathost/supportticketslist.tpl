{include file="$template/pageheader.tpl" title=$LANG.clientareanavsupporttickets desc=$LANG.supportticketsintro}

<div class="searchbox col-sm-3">
    <form method="post" action="supporttickets.php">
        <div class="input-group">
            <input type="text" name="searchterm" value="{if $q}{$q}{else}{$LANG.searchtickets}{/if}" class="form-control" onfocus="if(this.value=='{$LANG.searchtickets}')this.value=''" /><span class="input-group-btn"><button type="submit" class="btn btn-info">{$LANG.searchfilter}</button></span>
        </div>
    </form>
</div>

<div class="resultsbox">
<p>{$numitems} {$LANG.recordsfound}, {$LANG.page} {$pagenumber} {$LANG.pageof} {$totalpages}</p>
</div>
<div class="table-responsive"><table class="table table-striped table-framed table-centered">
    <thead>
        <tr>
            <th{if $orderby eq "date"} class="headerSort{$sort}"{/if}><a href="supporttickets.php?{if $searchterm}searchterm={$searchterm}&token={$token}&{/if}orderby=date">{$LANG.supportticketsdate}</a></th>
            <th{if $orderby eq "dept"} class="headerSort{$sort}"{/if}><a href="supporttickets.php?{if $searchterm}searchterm={$searchterm}&token={$token}&{/if}orderby=dept">{$LANG.supportticketsdepartment}</a></th>
            <th{if $orderby eq "subject"} class="headerSort{$sort}"{/if}><a href="supporttickets.php?{if $searchterm}searchterm={$searchterm}&token={$token}&{/if}orderby=subject">{$LANG.supportticketssubject}</a></th>
            <th{if $orderby eq "status"} class="headerSort{$sort}"{/if}><a href="supporttickets.php?{if $searchterm}searchterm={$searchterm}&token={$token}&{/if}orderby=status">{$LANG.supportticketsstatus}</a></th>
            <th{if $orderby eq "lastreply"} class="headerSort{$sort}"{/if}><a href="supporttickets.php?{if $searchterm}searchterm={$searchterm}&token={$token}&{/if}orderby=lastreply">{$LANG.supportticketsticketlastupdated}</a></th>
            <th>&nbsp;</th>
        </tr>
    </thead>
    <tbody>
{foreach key=num item=ticket from=$tickets}
        <tr>
            <td>{$ticket.date}</td>
            <td>{$ticket.department}</td>
            <td><div align="left"><a href="viewticket.php?tid={$ticket.tid}&amp;c={$ticket.c}"><img src="images/article.gif" alt="" border="0" /> {if $ticket.unread}<strong>{/if}#{$ticket.tid} - {$ticket.subject}{if $ticket.unread}</strong>{/if}</a></div></td>
            <td>{$ticket.status}</td>
            <td>{$ticket.lastreply}</td>
            <td class="textcenter"><a href="viewticket.php?tid={$ticket.tid}&c={$ticket.c}" class="btn btn-inverse">{$LANG.supportticketsviewticket}</a></td>
        </tr>
{foreachelse}
        <tr>
            <td colspan="7" class="textcenter">{$LANG.norecordsfound}</td>
        </tr>
{/foreach}
    </tbody>
</table></div>

{include file="$template/clientarearecordslimit.tpl" clientareaaction=$clientareaaction}

    <ul class="pagination">
        <li class="prev{if !$prevpage} disabled{/if}"><a href="{if $prevpage}supporttickets.php?{if $searchterm}searchterm={$searchterm}&token={$token}&{/if}page={$prevpage}{else}javascript:return false;{/if}">&larr; {$LANG.previouspage}</a></li>
        <li class="next{if !$nextpage} disabled{/if}"><a href="{if $nextpage}supporttickets.php?{if $searchterm}searchterm={$searchterm}&token={$token}&{/if}page={$nextpage}{else}javascript:return false;{/if}">{$LANG.nextpage} &rarr;</a></li>
    </ul>