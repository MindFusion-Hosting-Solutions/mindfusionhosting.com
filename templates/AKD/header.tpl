<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0"/>
<meta http-equiv="content-type" content="text/html; charset={$charset}" />
<title>{if $kbarticle.title}{$kbarticle.title} - {/if}{$pagetitle} - {$companyname}</title>
{if $systemurl}
<base href="{$systemurl}" />
{/if}<script type="text/javascript" src="includes/jscript/jquery.js"></script>
{if $livehelpjs}{$livehelpjs}
    {/if}
<link href="templates/{$template}/css/bootstrap.css" rel="stylesheet">
<link href="templates/{$template}/css/bootstrap-responsive.css" rel="stylesheet">
<link href="templates/{$template}/css/whmcs.css" rel="stylesheet">
<link href="templates/{$template}/css/style.css" rel="stylesheet">
<link href="templates/{$template}/css/slicknav.css" rel="stylesheet">
<link href="templates/{$template}/css/custom.css" rel="stylesheet">
<script src="templates/{$template}/js/jquery.min.js"></script>
<script src="templates/{$template}/js/bootstrap-collapse.js"></script>
<script src="templates/{$template}/js/dropdown.js"></script>
<script src="templates/{$template}/js/modernizr.min.js"></script>
<script src="templates/{$template}/js/jquery.slicknav.js"></script>
<script src="templates/{$template}/js/whmcs.js"></script>
{literal}
<script type="text/javascript" language="javascript">
$(document).ready(function(){
  	$('#menu').slicknav({prependTo: '#menu_area'});
});	
</script>
{/literal}
{$headoutput}
</head>

<body>
{$headeroutput}
<div class="wrapper">
  <div class="header">
    <div class="logo"><a href="index.html"></a></div>
    <div class="header_rt">
      <ul>
        <li class="header_icon1">Call Us: 008833-558844</li>
        <li class="header_icon2"><a href="#">24/7 Live Support</a></li>
        <li class="header_icon3"><a href="#">Customer Login</a></li>
      </ul>
      <!--header_rt--> 
    </div>
    <!--header--> 
  </div>
  <div class="clear"></div>
  <!--wrapper--> 
</div>
<div class="nav_con">
  <div class="wrapper" id="menu_area">
    <div id="nav">
      <ul id="menu">
        <li><a href="#">Home</a></li>
        <li><a href="javascript:void();">Hosting</a>
          <ul>
            <li><a href="#">Shared</a></li>
            <li><a href="#">Virtual</a></li>
            <li><a href="#">Dedicated</a></li>
            <li><a href="#"></a></li>
          </ul>
        </li>
        <li><a href="scripts.php">Softaculous Installer</a></li>
        <li><a href="#">Features</a></li>
        <li><a href="#">Blog</a></li>
        <li><a href="#">Contact us</a></li>
      </ul>
    </div>
    <div class="clear"></div>
    <!--wrapper--> 
  </div>
  <!--nav_con--> 
</div>
<div class="sub_banner_con">
  <div class="sub_banner_image">
    <div class="wrapper">
      <div class="sub_banner">
        <h1>{$pagetitle}</h1>
        <h2>Cheap, Affordable, Reliable and Multiple Web hosting Services</h2>
        <!--sub_banner--> 
      </div>
      <div class="clear"></div>
      <!--wrapper--> 
    </div>
    <!--sub_banner_image--> 
  </div>
  <!--sub_banner_con--> 
</div>
<div class="plan_con">
<div class="wrapper">
<div class="navbar navbar-fixed-top">
  <div class="navbar-inner">
    <div class="container"> <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </a>
      <div class="nav-collapse collapse navbar-responsive-collapse menu_box">
        <ul class="nav">
          <li><a href="{if $loggedin}clientarea{else}index{/if}.php">{$LANG.hometitle}</a></li>
        </ul>
        {if $loggedin}
        <ul class="nav">
          <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">{$LANG.navservices}&nbsp;<b class="caret"></b></a>
            <ul class="dropdown-menu">
              <li><a href="clientarea.php?action=products">{$LANG.clientareanavservices}</a></li>
              {if $condlinks.pmaddon}
              <li><a href="index.php?m=project_management">{$LANG.clientareaprojects}</a></li>
              {/if}
              <li class="divider"></li>
              <li><a href="cart.php">{$LANG.navservicesorder}</a></li>
              <li><a href="cart.php?gid=addons">{$LANG.clientareaviewaddons}</a></li>
            </ul>
          </li>
        </ul>
        {if $condlinks.domainreg || $condlinks.domaintrans}
        <ul class="nav">
          <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">{$LANG.navdomains}&nbsp;<b class="caret"></b></a>
            <ul class="dropdown-menu">
              <li><a href="clientarea.php?action=domains">{$LANG.clientareanavdomains}</a></li>
              <li class="divider"></li>
              <li><a href="cart.php?gid=renewals">{$LANG.navrenewdomains}</a></li>
              {if $condlinks.domainreg}
              <li><a href="cart.php?a=add&domain=register">{$LANG.navregisterdomain}</a></li>
              {/if}
              {if $condlinks.domaintrans}
              <li><a href="cart.php?a=add&domain=transfer">{$LANG.navtransferdomain}</a></li>
              {/if}
              {if $enomnewtldsenabled}
              <li><a href="index.php?m=enomnewtlds">Preregister New TLDs</a></li>
              {/if}
              <li class="divider"></li>
              <li><a href="domainchecker.php">{$LANG.navwhoislookup}</a></li>
            </ul>
          </li>
        </ul>
        {/if}
        <ul class="nav">
          <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">{$LANG.navbilling}&nbsp;<b class="caret"></b></a>
            <ul class="dropdown-menu">
              <li><a href="clientarea.php?action=invoices">{$LANG.invoices}</a></li>
              <li><a href="clientarea.php?action=quotes">{$LANG.quotestitle}</a></li>
              <li class="divider"></li>
              {if $condlinks.addfunds}
              <li><a href="clientarea.php?action=addfunds">{$LANG.addfunds}</a></li>
              {/if}
              {if $condlinks.masspay}
              <li><a href="clientarea.php?action=masspay&all=true">{$LANG.masspaytitle}</a></li>
              {/if}
              {if $condlinks.updatecc}
              <li><a href="clientarea.php?action=creditcard">{$LANG.navmanagecc}</a></li>
              {/if}
            </ul>
          </li>
        </ul>
        <ul class="nav">
          <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">{$LANG.navsupport}&nbsp;<b class="caret"></b></a>
            <ul class="dropdown-menu">
              <li><a href="supporttickets.php">{$LANG.navtickets}</a></li>
              <li><a href="knowledgebase.php">{$LANG.knowledgebasetitle}</a></li>
              <li><a href="downloads.php">{$LANG.downloadstitle}</a></li>
              <li><a href="serverstatus.php">{$LANG.networkstatustitle}</a></li>
            </ul>
          </li>
        </ul>
        <ul class="nav">
          <li><a href="submitticket.php">{$LANG.navopenticket}</a></li>
        </ul>
        {if $condlinks.affiliates}
        <ul class="nav">
          <li><a href="affiliates.php">{$LANG.affiliatestitle}</a></li>
        </ul>
        {/if}
        <ul class="nav pull-right">
          <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown">{$LANG.hello}, {$loggedinuser.firstname}!&nbsp;<b class="caret"></b></a>
            <ul class="dropdown-menu">
              <li><a href="clientarea.php?action=details">{$LANG.editaccountdetails}</a></li>
              {if $condlinks.updatecc}
              <li><a href="clientarea.php?action=creditcard">{$LANG.navmanagecc}</a></li>
              {/if}
              <li><a href="clientarea.php?action=contacts">{$LANG.clientareanavcontacts}</a></li>
              {if $condlinks.addfunds}
              <li><a href="clientarea.php?action=addfunds">{$LANG.addfunds}</a></li>
              {/if}
              <li><a href="clientarea.php?action=emails">{$LANG.navemailssent}</a></li>
              <li><a href="clientarea.php?action=changepw">{$LANG.clientareanavchangepw}</a></li>
              <li class="divider"></li>
              <li><a href="logout.php">{$LANG.logouttitle}</a></li>
            </ul>
          </li>
        </ul>
        {else}
        <ul class="nav">
          <li><a href="announcements.php">{$LANG.announcementstitle}</a></li>
        </ul>
        <ul class="nav">
          <li><a href="knowledgebase.php">{$LANG.knowledgebasetitle}</a></li>
        </ul>
        <ul class="nav">
          <li><a href="serverstatus.php">{$LANG.networkstatustitle}</a></li>
        </ul>
        <ul class="nav">
          <li><a href="affiliates.php">{$LANG.affiliatestitle}</a></li>
        </ul>
        <ul class="nav">
          <li><a href="contact.php">{$LANG.contactus}</a></li>
        </ul>
        <ul class="nav pull-right">
          <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">{$LANG.account}&nbsp;<b class="caret"></b></a>
            <ul class="dropdown-menu">
              <li><a href="clientarea.php">{$LANG.login}</a></li>
              <li><a href="register.php">{$LANG.register}</a></li>
              <li class="divider"></li>
              <li><a href="pwreset.php">{$LANG.forgotpw}</a></li>
            </ul>
          </li>
        </ul>
        {/if} </div>
      <!-- /.nav-collapse --> 
    </div>
  </div>
  <!-- /navbar-inner --> 
</div>
<!-- /navbar -->

<div class="whmcscontainer">
<div class="contentpadded">
{if $pagetitle eq $LANG.carttitle}
<div id="whmcsorderfrm">
{/if}