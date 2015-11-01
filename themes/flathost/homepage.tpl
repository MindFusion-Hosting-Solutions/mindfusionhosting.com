<div class="container"> 
  <!--============== Main Features ==============-->
  
  <div class="row mainFeatures" id="features">
    <div class="col-sm-6 col-md-4">
      <div class="img-thumbnail"> <img src="templates/{$template}/img/secure_img.png" width="85" height="88" alt="secure">
        <div class="caption">
          <h4>Secure &amp; Reliable</h4>
          <p>Flathost servers are having high physical security and power redundancy Your data will be secure with us.</p>
        </div>
      </div>
    </div>
    <div class="col-sm-6 col-md-4">
      <div class="img-thumbnail"> <img src="templates/{$template}/img/fast_img.png" width="85" height="88" alt="secure">
        <div class="caption">
          <h4>Super Fast</h4>
          <p>With our ultra mordern servers and optical cables, your data will be transfered to end user in milliseconds.</p>
        </div>
      </div>
    </div>
    <div class="col-sm-6 col-md-4 col-sm-offset-3 col-md-offset-0">
      <div class="img-thumbnail"> <img src="templates/{$template}/img/support_img.png" width="85" height="88" alt="secure">
        <div class="caption">
          <h4>Customer Support</h4>
          <p>We have a dedicated team of support for sales and support to help you in anytime. You can also chat with us.</p>
        </div>
      </div>
    </div>
  </div>
  
  
  
</div>

</div>
</div>
<!--Closing of container and containerpadding-->


{if $condlinks.domainreg || $condlinks.domaintrans || $condlinks.domainown}
<div class="domain">
<div class="container">
  
  
    <div class="row PageHead">
      <div class="col-md-12">
        <h1>{$LANG.domaincheckerchoosedomain}</h1>
        <h3>{$LANG.domaincheckerenterdomain}</h3>
      </div>
    </div>
    
    
    
    <form method="post" action="{$systemsslurl}domainchecker.php">
        <div class="row"><div class="form-group col-sm-8 col-sm-offset-2"><input class="form-control input-lg" name="domain" type="text" value="{$LANG.domaincheckerdomainexample}" onfocus="if(this.value=='{$LANG.domaincheckerdomainexample}')this.value=''" onblur="if(this.value=='')this.value='{$LANG.domaincheckerdomainexample}'" /></div></div>
        {if $captcha}
        <div class="captchainput" align="center">
            <p>{$LANG.captchaverify}</p>
            {if $captcha eq "recaptcha"}
            <p>{$recaptchahtml}</p>
            {else}
            <p><img src="includes/verifyimage.php" align="middle" /> <input type="text" name="code" class="input-small" maxlength="5" /></p>
            {/if}
        </div>
        {/if}
        <div class="internalpadding multiple-btns">{if $condlinks.domainreg}<input type="submit" value="{$LANG.checkavailability}" class="btn btn-primary btn-lg" /> {/if}{if $condlinks.domaintrans}<input type="submit" name="transfer" value="{$LANG.domainstransfer}" class="btn btn-success btn-lg" />{/if}{if $condlinks.domainown} <input type="submit" name="hosting" value="{$LANG.domaincheckerhostingonly}" class="btn btn-info btn-lg" />{/if}</div>
        </form>
        
        
</div></div>
{/if}

<div class="container">
<div class="contentpadded">

<div class="row">

<div class="col-sm-6">
    <div class="internalpadding">
        <div class="styled_title">
            <h2>{$LANG.navservicesorder}</h2>
        </div>
        <p>{$LANG.clientareahomeorder} </p>
        <form method="post" action="cart.php">
        <p><input type="submit" value="{$LANG.clientareahomeorderbtn} &raquo;" class="btn btn-primary" /></p>
        </form>
    </div>
</div>
<div class="col-sm-6">
    <div class="internalpadding">
        <div class="styled_title"><h2>{$LANG.manageyouraccount}</h2></div>
        <p>{$LANG.clientareahomelogin} </p>
        <form method="post" action="clientarea.php">
        <p><input type="submit" value="{$LANG.clientareahomeloginbtn} &raquo;" class="btn btn-success" /></p>
        </form>
    </div>
</div>

</div>
<hr>
<div class="row">

{if $twitterusername}
<div class="styled_title">
    <h2>{$LANG.twitterlatesttweets}</h2>
</div>
<div id="twitterfeed">
    <p><img src="images/loading.gif"></p>
</div>
{literal}<script language="javascript">
jQuery(document).ready(function(){
  jQuery.post("announcements.php", { action: "twitterfeed", numtweets: 3 },
    function(data){
      jQuery("#twitterfeed").html(data);
    });
});
</script>{/literal}
{elseif $announcements}
<div class="styled_title">
    <h2>{$LANG.latestannouncements}</h2>
</div>
{foreach from=$announcements item=announcement}
<p>{$announcement.date} - <a href="{if $seofriendlyurls}announcements/{$announcement.id}/{$announcement.urlfriendlytitle}.html{else}announcements.php?id={$announcement.id}{/if}"><b>{$announcement.title}</b></a><br />{$announcement.text|strip_tags|truncate:300:"..."}</p>
{/foreach}
{/if}

</div>