{include file="$template/pageheader.tpl" title=$LANG.downloadstitle}

<div class="searchbox col-sm-3">
    <form method="post" action="downloads.php?action=search">
        <div class="input-group">
            <input type="text" name="search" value="{if $search}{$search}{else}{$LANG.downloadssearch}{/if}" class="form-control" onfocus="if(this.value=='{$LANG.downloadssearch}')this.value=''" />
            <span class="input-group-btn"><button type="submit" class="btn btn-warning">{$LANG.search}</button></span>
        </div>
    </form>
</div>

<p>{$LANG.downloadsintrotext}</p>

<br />

{if $dlcats}

{include file="$template/subheader.tpl" title=$LANG.downloadscategories}

<div class="row">
<div class="form-group">
{foreach from=$dlcats item=dlcat}
    <div class="col4">
        <div class="internalpadding">
            <img src="images/folder.gif" /> <a href="{if $seofriendlyurls}downloads/{$dlcat.id}/{$dlcat.urlfriendlyname}{else}downloads.php?action=displaycat&amp;catid={$dlcat.id}{/if}" class="fontsize2"><strong>{$dlcat.name}</strong></a> ({$dlcat.numarticles})<br />
            {$dlcat.description}
        </div>
    </div>
{/foreach}
</div>
</div>

{/if}
{include file="$template/subheader.tpl" title=$LANG.downloadsfiles}
{if $downloads}

{foreach from=$downloads item=download}
<div class="row">
    {$download.type} <a href="{$download.link}" class="fontsize2"><strong>{$download.title}{if $download.clientsonly} <img src="images/padlock.gif" alt="{$LANG.loginrequired}" />{/if}</strong></a><br />
    {$download.description}<br />
    <span class="lighttext">{$LANG.downloadsfilesize}: {$download.filesize}</span>
</div>
{/foreach}

{else}

<p class="textcenter fontsize3">{$LANG.downloadsnone}</p>

{/if}

<br />
<br />
<br />