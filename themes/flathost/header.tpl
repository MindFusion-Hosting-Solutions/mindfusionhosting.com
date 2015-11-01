<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset={$charset}" />
<title>{if $kbarticle.title}{$kbarticle.title} - {/if}{$pagetitle} - {$companyname}</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
{if $systemurl}
<base href="{$systemurl}" />
{/if}<script type="text/javascript" src="includes/jscript/jquery.js"></script>
{if $livehelpjs}{$livehelpjs}
    {/if}
<link href="templates/{$template}/css/bootstrap.css" rel="stylesheet">
<link href="templates/{$template}/css/flathost.css" rel="stylesheet">
<!--==== GOOGLE FONT - MONTSERRAT =======-->
<link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
<script src="templates/{$template}/js/bootstrap.js"></script>
<script src="templates/{$template}/js/whmcs.js"></script>
{$headoutput}
</head>

<body>
{$headeroutput} 

<!--===== FLATHOST NAVIGATION ======-->

<nav class="navbar navbar-default navbar-static-top" role="navigation"> 
  <!-- Brand and toggle get grouped for better mobile display -->
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      <a class="navbar-brand" href="index.php"> <img src="templates/{$template}/img/logo.png" alt="{$companyname}" /></a> </div>
    <a href="index.php" class="hidden">{$companyname}</a> 
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="../index.html">HOME</a></li>
        <li class="hidden-sm"><a href="#">FEATURES</a></li>
        <li class="hidden-sm"><a href="#">PARTNERS</a></li>
        <li><a href="#pricing">PRICING</a></li>
        <li><a href="#">CONTACT</a></li>
      </ul>
      </li>
      </ul>
    </div>
    <!-- /.navbar-collapse --> 
    
  </div>
</nav>

<!--===== WHMCS NAVIGATION ======-->

<div class="navbar navbar-inverse navbar-static-top" role="navigation">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-whmcs-collapse"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
    </div>
    <div class="navbar-collapse navbar-whmcs-collapse collapse">
  <ul class="nav navbar-nav">
    <li>  <a id="Menu-Home" href="{if $loggedin}clientarea{else}index{/if}.php"><span class="glyphicon glyphicon-home"></span> {$LANG.hometitle}</a></li>
    {if $loggedin}
    <li class="dropdown"><a id="Menu-Services" class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-tasks"></span> {$LANG.navservices}&nbsp;<b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a id="Menu-Services-My_Services" href="clientarea.php?action=products">{$LANG.clientareanavservices}</a></li>
        {if $condlinks.pmaddon}
        <li><a id="Menu-Services-My_Projects" href="index.php?m=project_management">{$LANG.clientareaprojects}</a></li>
        {/if}
        <li class="divider"></li>
        <li><a id="Menu-Services-Order_New_Services" href="cart.php">{$LANG.navservicesorder}</a></li>
        <li><a id="Menu-Services-View_Available_Addons" href="cart.php?gid=addons">{$LANG.clientareaviewaddons}</a></li>
      </ul>
    </li>
    {if $condlinks.domainreg || $condlinks.domaintrans}
    <li class="dropdown"><a id="Menu-Domains" class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-globe"></span> {$LANG.navdomains}&nbsp;<b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a id="Menu-Domains-My_Domains" href="clientarea.php?action=domains">{$LANG.clientareanavdomains}</a></li>
        <li class="divider"></li>
        <li><a id="Menu-Domains-Renew_Domains" href="cart.php?gid=renewals">{$LANG.navrenewdomains}</a></li>
        {if $condlinks.domainreg}
        <li><a id="Menu-Domains-Register_a_New_Domain" href="cart.php?a=add&domain=register">{$LANG.navregisterdomain}</a></li>
        {/if}
        {if $condlinks.domaintrans}
        <li><a id="Menu-Domains-Transfer_Domains_to_Us" href="cart.php?a=add&domain=transfer">{$LANG.navtransferdomain}</a></li>
        {/if}
        {if $enomnewtldsenabled}
        <li><a id="Menu-Domains-Preregister_New_TLDs" href="{$enomnewtldslink}">Preregister New TLDs</a></li>
        {/if}
        <li class="divider"></li>
        <li><a id="Menu-Domains-Whois_Lookup" href="domainchecker.php">{$LANG.navwhoislookup}</a></li>
      </ul>
    </li>
    {/if}
    <li class="dropdown"><a id="Menu-Billing" class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-usd"></span> {$LANG.navbilling}&nbsp;<b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a id="Menu-Billing-My_Invoices" href="clientarea.php?action=invoices">{$LANG.invoices}</a></li>
        <li><a id="Menu-Billing-My_Quotes" href="clientarea.php?action=quotes">{$LANG.quotestitle}</a></li>
        <li class="divider"></li>
        {if $condlinks.addfunds}
        <li><a id="Menu-Billing-Add_Funds" href="clientarea.php?action=addfunds">{$LANG.addfunds}</a></li>
        {/if}
        {if $condlinks.masspay}
        <li><a id="Menu-Billing-Mass_Payment" href="clientarea.php?action=masspay&all=true">{$LANG.masspaytitle}</a></li>
        {/if}
        {if $condlinks.updatecc}
        <li><a id="Menu-Billing-Manage_Credit_Card" href="clientarea.php?action=creditcard">{$LANG.navmanagecc}</a></li>
        {/if}
      </ul>
    </li>
    <li class="dropdown"><a id="Menu-Support" class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-info-sign"></span> {$LANG.navsupport}&nbsp;<b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a id="Menu-Support-Tickets" href="supporttickets.php">{$LANG.navtickets}</a></li>
        <li><a id="Menu-Support-Knowledgebase" href="knowledgebase.php">{$LANG.knowledgebasetitle}</a></li>
        <li><a id="Menu-Support-Downloads" href="downloads.php">{$LANG.downloadstitle}</a></li>
        <li><a id="Menu-Support-Network_Status" href="serverstatus.php">{$LANG.networkstatustitle}</a></li>
      </ul>
    </li>
    <li><a id="Menu-Open_Ticket" href="submitticket.php"><span class="glyphicon glyphicon-envelope"></span> {$LANG.navopenticket}</a></li>
    {if $condlinks.affiliates}
    <li><a id="Menu-Affiliates" href="affiliates.php"><span class="glyphicon glyphicon-screenshot"></span> {$LANG.affiliatestitle}</a></li>
    {/if}
    {if $livehelp}
    <li><a id="Menu-Live_Chat" href="#" class="LiveHelpButton">Live Chat - <span class="LiveHelpTextStatus">Offline</span></a></li>
    {/if}
  </ul>
  
   <!--nav right-->
 
  <ul class="nav  navbar-nav navbar-right">
    <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" id="Menu-Hello_User"><span class="glyphicon glyphicon-user"></span> {$LANG.hello}, {$loggedinuser.firstname}&nbsp; <b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a id="Menu-Hello_User-Edit_Account_Details" href="clientarea.php?action=details">{$LANG.editaccountdetails}</a></li>
        {if $condlinks.updatecc}
        <li><a id="Menu-Hello_User-Contacts_Sub-Accounts" href="clientarea.php?action=creditcard">{$LANG.navmanagecc}</a></li>
        {/if}
        <li><a href="clientarea.php?action=contacts">{$LANG.clientareanavcontacts}</a></li>
        {if $condlinks.addfunds}
        <li><a id="Menu-Hello_User-Add_Funds" href="clientarea.php?action=addfunds">{$LANG.addfunds}</a></li>
        {/if}
        <li><a id="Menu-Hello_User-Email_History" href="clientarea.php?action=emails">{$LANG.navemailssent}</a></li>
        <li><a id="Menu-Hello_User-Change_Password" href="clientarea.php?action=changepw">{$LANG.clientareanavchangepw}</a></li>
        <li class="divider"></li>
        <li><a id="Menu-Hello_User-Logout" href="logout.php">{$LANG.logouttitle}</a></li>
      </ul>
    </li>
  {else}
    <li><a id="Menu-Annoucements" href="announcements.php"><span class="glyphicon glyphicon-bullhorn"></span> {$LANG.announcementstitle}</a></li>
    <li><a id="Menu-Knowledgebase" href="knowledgebase.php"><span class="glyphicon glyphicon-info-sign"></span> {$LANG.knowledgebasetitle}</a></li>
    <li><a id="Menu-Network_Status" href="serverstatus.php"><span class="glyphicon glyphicon-stats"></span>  {$LANG.networkstatustitle}</a></li>
    <li><a id="Menu-Affiliates" href="affiliates.php"><span class="glyphicon glyphicon-user"></span> {$LANG.affiliatestitle}</a></li>
    <li><a id="Menu-Contact_Us" href="contact.php"><span class="glyphicon glyphicon-envelope"></span> {$LANG.contactus}</a></li>
    {if $livehelp}
    <li><a id="Menu-Live_Chat" href="#" class="LiveHelpButton">Live Chat - <span class="LiveHelpTextStatus">Offline</span></a></li>
    {/if}
    </ul>
 
  <ul class="nav  navbar-nav navbar-right">
    <li class="dropdown"><a id="Menu-Account" class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-user"></span> {$LANG.account}&nbsp;<b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a id="Menu-Account-Login" href="clientarea.php">{$LANG.login}</a></li>
        <li><a id="Menu-Account-Register" href="register.php">{$LANG.register}</a></li>
        <li class="divider"></li>
        <li><a id="Menu-Account-Forgot_Password" href="pwreset.php">{$LANG.forgotpw}</a></li>
      </ul>
    </li>
  </ul>
  {/if} </div>

    <!--/.nav-collapse --> 
  </div>
</div>

<!-- /navbar -->

<div class="container">
<div class="contentpadded">
{if $pagetitle eq $LANG.carttitle}
<div id="whmcsorderfrm">
{/if} 
