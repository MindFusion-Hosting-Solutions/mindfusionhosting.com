{include file="$template/pageheader.tpl" title=$LANG.knowledgebasetitle}

<div class="well">
    <div class="textcenter">
        <form method="post" action="knowledgebase.php?action=search" class="form">
        
        
        <div class="row last-row">
        
        <div class="form-group col-sm-9"><input class="form-control input-lg" name="search" type="text" placeholder="{$LANG.kbquestionsearchere}"></div>
        <div class="form-group col-sm-3"><input type="submit" class="btn btn-block btn-lg btn-primary" value="{$LANG.knowledgebasesearch}" /></div>
        
        </div>
        
        </form>
    </div>
</div>

{include file="$template/subheader.tpl" title=$LANG.knowledgebasecategories}

<div class="row">
<div class="form-group">
{foreach name=kbasecats from=$kbcats item=kbcat}
    <div class="col-md-4">
        <div class="internalpadding">
            <img src="images/folder.gif" /> <a href="{if $seofriendlyurls}knowledgebase/{$kbcat.id}/{$kbcat.urlfriendlyname}{else}knowledgebase.php?action=displaycat&amp;catid={$kbcat.id}{/if}" class="fontsize2"><strong>{$kbcat.name}</strong></a> ({$kbcat.numarticles})<br />
            {$kbcat.description}
        </div>
    </div>
    {if ($smarty.foreach.kbasecats.index+1) is div by 4}<div class="clear"></div>
    {/if}
{/foreach}
</div>
</div>

{include file="$template/subheader.tpl" title=$LANG.knowledgebasepopular}

{foreach from=$kbmostviews item=kbarticle}
<div class="row">
    <img src="images/article.gif"> <a href="{if $seofriendlyurls}knowledgebase/{$kbarticle.id}/{$kbarticle.urlfriendlytitle}.html{else}knowledgebase.php?action=displayarticle&amp;id={$kbarticle.id}{/if}" class="fontsize2"><strong>{$kbarticle.title}</strong></a><br />
    {$kbarticle.article|truncate:100:"..."}
</div>
{/foreach}

<br />