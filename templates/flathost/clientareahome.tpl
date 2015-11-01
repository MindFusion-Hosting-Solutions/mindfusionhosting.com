

<div class="stats-block">
		<a href="clientarea.php?action=products" class="services-stats">
			
            <p class="stats-count">{$clientsstats.productsnumactive}</p>

			<p class="stats-head"><span>&rarr;</span> Services in active </p>


		</a><!--active-services-->

		 <a href="clientarea.php?action=domains" class="domains-stats">

			<p class="stats-count">{$clientsstats.numactivedomains}</p>
            
            		<p class="stats-head"><span>&rarr;</span>  Domains in active</p>

		</a><!--active-services-->

		<a href="clientarea.php?action=invoices" class="invoices-stats">

			<p class="stats-count">{$clientsstats.numdueinvoices}</p>
            
            	<p class="stats-head"><span>&rarr;</span>  Invoices due</p>

		</a><!--active-services-->

		<a href="supporttickets.php" class="tickets-stats">

			<p class="stats-count">{$clientsstats.numactivetickets}</p>
            
			<p class="stats-head"><span>&rarr;</span>  Open Tickets</p>

		</a><!--active-services-->
</div>



<div class="row">


<div class="col-sm-6">
<div class="panel panel-default">
  <div class="panel-heading">  {$LANG.accountinfo} </div>
  <div class="panel-body">
   <p class="text-right"><a href="clientarea.php?action=details"><span class="glyphicon glyphicon-pencil"></span> {$LANG.clientareaupdateyourdetails}</a> </p>
      <p><strong>{$clientsdetails.firstname} {$clientsdetails.lastname} {if $clientsdetails.companyname}({$clientsdetails.companyname}){/if}</strong></p>
            <p>{$clientsdetails.address1}{if $clientsdetails.address2}, {$clientsdetails.address2}{/if}</p>
            <p>{if $clientsdetails.city}{$clientsdetails.city}, {/if}{if $clientsdetails.state}{$clientsdetails.state}, {/if}{$clientsdetails.postcode}</p>
            <p>{$clientsdetails.countryname}</p>
            <p><a href="mailto:{$clientsdetails.email}">{$clientsdetails.email}</a></p>
            
          
            
  </div>
</div>
</div>

<div class="col-sm-6">
<div class="panel panel-default">
  <div class="panel-heading">{$LANG.accountoverview}</div>
  <div class="panel-body">
  <div class="list-group">
  
 
 
  
   <a class="list-group-item" href="clientarea.php?action=products">{$LANG.statsnumproducts} <span class="badge">{$clientsstats.productsnumactive}&nbsp;({$clientsstats.productsnumtotal})</span> </a>
          <a class="list-group-item" href="clientarea.php?action=domains">{$LANG.statsnumdomains} <span class="badge">{$clientsstats.numactivedomains} &nbsp;({$clientsstats.numdomains})</span> </a>
          <a class="list-group-item" href="supporttickets.php">{$LANG.statsnumtickets}: <span class="badge">{$clientsstats.numtickets}</span> </a>
            <a class="list-group-item" href="affiliates.php">{$LANG.statsnumreferredsignups}: <span class="badge">{$clientsstats.numaffiliatesignups}</span></a>
          
           </div>
           
            <p>{$LANG.creditcardyourinfo}: <strong>{if $defaultpaymentmethod}{$defaultpaymentmethod}{else}{$LANG.paymentmethoddefault}{/if}</strong> {if $clientsdetails.cctype}({$clientsdetails.cctype}-{$clientsdetails.cclastfour}) - <a href="clientarea.php?action=creditcard">Update &raquo;</a></p>{/if}
  </div>
</div>
</div>


    
    
    
</div>

{if $announcements}
<div class="alert alert-warning">
    <p><strong>{$LANG.ourlatestnews}:</strong> {$announcements.0.title}<br> {$announcements.0.text|strip_tags|truncate:100:'...'} <a href="announcements.php?id={$announcements.0.id}" class="alert-link">{$LANG.more}</a></p>
</div>
{/if}
{if $ccexpiringsoon}
<div class="alert alert-danger">
    <p><strong>{$LANG.ccexpiringsoon}:</strong> {$LANG.ccexpiringsoondesc|sprintf2:'<a href="clientarea.php?action=creditcard" class="btn btn-mini">':'</a>'}</p>
</div>
{/if}
{if $clientsstats.incredit}
<div class="alert alert-success">
    <p><strong>{$LANG.availcreditbal}:</strong> {$LANG.availcreditbaldesc|sprintf2:$clientsstats.creditbalance}</p>
</div>
{/if}
{if $clientsstats.numoverdueinvoices>0}
<div class="alert alert-block alert-danger">
    <p><strong>{$LANG.youhaveoverdueinvoices|sprintf2:$clientsstats.numoverdueinvoices}:</strong> {$LANG.overdueinvoicesdesc|sprintf2:'<a href="clientarea.php?action=masspay&all=true" class="btn btn-mini btn-danger">':'</a>'}</p>
</div>
{/if}

{foreach from=$addons_html item=addon_html}
<div style="margin:15px 0;">{$addon_html}</div>
{/foreach}

</div>
</div>
<!--Closing of container and containerpadding-->

{if $condlinks.domainreg || $condlinks.domaintrans || $condlinks.domainown}
<div class="domain">
<div class="container">
  
<form method="post" action="domainchecker.php">
    
    <div class="row PageHead">
      <div class="col-md-12">
        <h3>{$LANG.domaincheckerchecknewdomain}</h3>
      </div>
    </div>
    
    
  <div class="row"><div class="form-group col-sm-8 col-sm-offset-2">  <input class="form-control input-lg" name="domain" type="text" value="{$LANG.domaincheckerdomainexample}" onfocus="if(this.value=='{$LANG.domaincheckerdomainexample}')this.value=''" onblur="if(this.value=='')this.value='{$LANG.domaincheckerdomainexample}'" /></div></div>
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
    <div class="internalpadding multiple-btns">
        {if $condlinks.domainreg}<input type="submit" value="{$LANG.checkavailability}" class="btn btn-primary btn-lg" />{/if}
        {if $condlinks.domaintrans}<input type="submit" name="transfer" value="{$LANG.domainstransfer}" class="btn btn-success btn-lg" />{/if}
        {if $condlinks.domainown}<input type="submit" name="hosting" value="{$LANG.domaincheckerhostingonly}" class="btn btn-info btn-lg" />{/if}
    </div>


</form>


</div></div>
{/if}

<div class="container">
<div class="contentpadded">

{if in_array('tickets',$contactpermissions)}

<a class="btn pull-right" href="submitticket.php"><i class="icon-comment"></i> {$LANG.opennewticket}</a><br>

<div class="styled_title">
    <h3>{$LANG.supportticketsopentickets} <span class="badge badge-info">{$clientsstats.numactivetickets}</span></h3>
</div>

<br />

<div class="table-responsive"><table class="table table-striped table-framed table-centered">
    <thead>
        <tr>
            <th><a href="supporttickets.php?orderby=date">{$LANG.supportticketsdate}</a></th>
            <th><a href="supporttickets.php?orderby=dept">{$LANG.supportticketsdepartment}</a></th>
            <th><a href="supporttickets.php?orderby=subject">{$LANG.supportticketssubject}</a></th>
            <th><a href="supporttickets.php?orderby=status">{$LANG.supportticketsstatus}</a></th>
            <th class="headerSortdesc"><a href="supporttickets.php?orderby=lastreply">{$LANG.supportticketsticketlastupdated}</a></th>
            <th>&nbsp;</th>
        </tr>
    </thead>
    <tbody>
{foreach from=$tickets item=ticket}
    <tr>
        <td>{$ticket.date}</td>
        <td>{$ticket.department}</td>
        <td><div align="left"><img src="images/article.gif" alt="Ticket" border="0" />&nbsp;<a href="viewticket.php?tid={$ticket.tid}&amp;c={$ticket.c}">{if $ticket.unread}<strong>{/if}#{$ticket.tid} - {$ticket.subject}{if $ticket.unread}</strong>{/if}</a></div></td>
        <td>{$ticket.status}</td>
        <td>{$ticket.lastreply}</td>
            <td class="textcenter"><a href="viewticket.php?tid={$ticket.tid}&c={$ticket.c}" class="btn btn-inverse">{$LANG.supportticketsviewticket}</a></td>
    </tr>
{foreachelse}
    <tr>
        <td colspan="6" class="textcenter">{$LANG.supportticketsnoneopen}</td>
    </tr>
{/foreach}
    </tbody>
</table></div>

{/if}

{if in_array('invoices',$contactpermissions)}

<div class="styled_title">
    <h3>{$LANG.invoicesdue} <span class="badge badge-important">{$clientsstats.numdueinvoices}</span></h3>
</div>

<br />

<form method="post" action="clientarea.php?action=masspay">

<div class="table-responsive"><table class="table table-striped table-framed table-centered">
    <thead>
        <tr>
            {if $masspay}<th class="textcenter"><input type="checkbox" onclick="toggleCheckboxes('invids')" /></th>{/if}
            <th class="headerSortdesc"><a href="clientarea.php?action=invoices&orderby=id">{$LANG.invoicestitle}</a></th>
            <th{if $orderby eq "date"} class="headerSort{$sort}"{/if}><a href="clientarea.php?action=invoices&orderby=date">{$LANG.invoicesdatecreated}</a></th>
            <th{if $orderby eq "duedate"} class="headerSort{$sort}"{/if}><a href="clientarea.php?action=invoices&orderby=duedate">{$LANG.invoicesdatedue}</a></th>
            <th{if $orderby eq "total"} class="headerSort{$sort}"{/if}><a href="clientarea.php?action=invoices&orderby=total">{$LANG.invoicestotal}</a></th>
            <th{if $orderby eq "balance"} class="headerSort{$sort}"{/if}><a href="clientarea.php?action=invoices&orderby=balance">{$LANG.invoicesbalance}</a></th>
            <th{if $orderby eq "status"} class="headerSort{$sort}"{/if}><a href="clientarea.php?action=invoices&orderby=status">{$LANG.invoicesstatus}</a></th>
            <th>&nbsp;</th>
        </tr>
    </thead>
    <tbody>
{foreach from=$invoices item=invoice}
        <tr>
            {if $masspay}<td class="textcenter"><input type="checkbox" name="invoiceids[]" value="{$invoice.id}" class="invids" /></td>{/if}
            <td><a href="viewinvoice.php?id={$invoice.id}" target="_blank">{$invoice.invoicenum}</a></td>
            <td>{$invoice.datecreated}</td>
            <td>{$invoice.datedue}</td>
            <td>{$invoice.total}</td>
            <td>{$invoice.balance}</td>
            <td><span class="label {$invoice.rawstatus}">{$invoice.statustext}</span></td>
            <td class="textcenter"><a href="viewinvoice.php?id={$invoice.id}" target="_blank" class="btn">{$LANG.invoicesview}</a></td>
        </tr>
{foreachelse}
        <tr>
            <td colspan="{if $masspay}8{else}7{/if}" class="textcenter">{$LANG.invoicesnoneunpaid}</td>
        </tr>
{/foreach}
{if $invoices}
        <tr>
            <td colspan="{if $masspay}4{else}3{/if}">{if $masspay}<div align="left"><input type="submit" value="{$LANG.masspayselected}" class="btn" /> <a href="clientarea.php?action=masspay&all=true" class="btn btn-success"><i class="icon-ok-circle icon-white"></i> {$LANG.masspayall}</a></div>{/if}</td>
            <td class="textright"><strong>{$LANG.invoicestotaldue}</strong></td>
            <td><strong>{$totalbalance}</strong></td>
            <td colspan="2">&nbsp;</td>
        </tr>
{/if}
    </tbody>
</table></div>

</form>

{/if}

{if $files}

<div class="styled_title">
    <h3>{$LANG.clientareafiles}</h3>
</div>

<div class="row">
<div class="form-group">
{foreach from=$files item=file}
    <div class="col4">
        <div class="internalpadding">
            <img src="images/file.png" /> <a href="dl.php?type=f&id={$file.id}" class="fontsize2"><strong>{$file.title}</strong></a><br />
            {$LANG.clientareafilesdate}: {$file.date}
        </div>
    </div>
{/foreach}
</div>
</div>

{/if}