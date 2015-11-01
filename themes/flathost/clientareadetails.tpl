{include file="$template/pageheader.tpl" title=$LANG.clientareanavdetails}

<script type="text/javascript" src="includes/jscript/statesdropdown.js"></script>

{include file="$template/clientareadetailslinks.tpl"}

{if $successful}
<div class="alert alert-success">
    <p>{$LANG.changessavedsuccessfully}</p>
</div>
{/if}

{if $errormessage}
<div class="alert alert-danger">
    <p class="bold">{$LANG.clientareaerrors}</p>
    <ul>
        {$errormessage}
    </ul>
</div>
{/if}

<form class="form" method="post" action="{$smarty.server.PHP_SELF}?action=details">



<div class="row">
<div class="col-sm-6">

    <div class="form-group">
        <label for="firstname">{$LANG.clientareafirstname}</label>
        <div class="controls">
            <input type="text" class="form-control" name="firstname" id="firstname" value="{$clientfirstname}"{if in_array('firstname',$uneditablefields)} disabled="" class="disabled"{/if} />
        </div>
    </div>

    <div class="form-group">
        <label for="lastname">{$LANG.clientarealastname}</label>
        <div class="controls">
            <input type="text" class="form-control" name="lastname" id="lastname" value="{$clientlastname}"{if in_array('lastname',$uneditablefields)} disabled="" class="disabled"{/if} />
        </div>
    </div>

    <div class="form-group">
        <label for="companyname">{$LANG.clientareacompanyname}</label>
        <div class="controls">
            <input type="text" class="form-control" name="companyname" id="companyname" value="{$clientcompanyname}"{if in_array('companyname',$uneditablefields)} disabled="" class="disabled"{/if} />
        </div>
    </div>

    <div class="form-group">
        <label for="email">{$LANG.clientareaemail}</label>
        <div class="controls">
            <input type="text" class="form-control" name="email" id="email" value="{$clientemail}"{if in_array('email',$uneditablefields)} disabled="" class="disabled"{/if} />
        </div>
    </div>

    

    <div class="form-group">
        <label for="paymentmethod">{$LANG.paymentmethod}</label>
        <div class="controls">
            <select class="form-control" name="paymentmethod" id="paymentmethod">
            <option value="none">{$LANG.paymentmethoddefault}</option>
            {foreach from=$paymentmethods item=method}
            <option value="{$method.sysname}"{if $method.sysname eq $defaultpaymentmethod} selected="selected"{/if}>{$method.name}</option>
            {/foreach}
            </select>
        </div>
    </div>

    <div class="form-group">
        <label for="billingcontact">{$LANG.defaultbillingcontact}</label>
        <div class="controls">
            <select class="form-control" name="billingcid" id="billingcontact">
            <option value="0">{$LANG.usedefaultcontact}</option>
            {foreach from=$contacts item=contact}
            <option value="{$contact.id}"{if $contact.id eq $billingcid} selected="selected"{/if}>{$contact.name}</option>
            {/foreach}
            </select>
        </div>
    </div>

</div>
<div class="col-sm-6">

    <div class="form-group">
        <label for="address1">{$LANG.clientareaaddress1}</label>
        <div class="controls">
            <input type="text" class="form-control" name="address1" id="address1" value="{$clientaddress1}"{if in_array('address1',$uneditablefields)} disabled="" class="disabled"{/if} />
        </div>
    </div>

    <div class="form-group">
        <label for="address2">{$LANG.clientareaaddress2}</label>
        <div class="controls">
            <input type="text" class="form-control" name="address2" id="address2" value="{$clientaddress2}"{if in_array('address2',$uneditablefields)} disabled="" class="disabled"{/if} />
        </div>
    </div>

    <div class="form-group">
        <label for="city">{$LANG.clientareacity}</label>
        <div class="controls">
            <input type="text" class="form-control" name="city" id="city" value="{$clientcity}"{if in_array('city',$uneditablefields)} disabled="" class="disabled"{/if} />
        </div>
    </div>

    <div class="form-group">
        <label for="country">{$LANG.clientareacountry}</label>
        <div class="controls">
            {$clientcountriesdropdown}
        </div>
    </div>

    <div class="form-group">
        <label for="state">{$LANG.clientareastate}</label>
        <div class="controls">
            <input type="text" class="form-control" name="state" id="state" value="{$clientstate}"{if in_array('state',$uneditablefields)} disabled="" class="disabled"{/if} />
        </div>
    </div>

    <div class="form-group">
        <label for="postcode">{$LANG.clientareapostcode}</label>
        <div class="controls">
            <input type="text" class="form-control" name="postcode" id="postcode" value="{$clientpostcode}"{if in_array('postcode',$uneditablefields)} disabled="" class="disabled"{/if} />
        </div>
    </div>

    <div class="form-group">
        <label for="phonenumber">{$LANG.clientareaphonenumber}</label>
        <div class="controls">
            <input type="text" class="form-control" name="phonenumber" id="phonenumber" value="{$clientphonenumber}"{if in_array('phonenumber',$uneditablefields)} disabled="" class="disabled"{/if} />
        </div>
    </div>
    {if $emailoptoutenabled}
    <div class="form-group">
        <label for="emailoptout">{$LANG.emailoptout}</label>
        <div class="controls">
            <input type="checkbox" value="1" name="emailoptout" id="emailoptout" {if $emailoptout} checked{/if} /> {$LANG.emailoptoutdesc}
        </div>
    </div>
    {/if}

</div>
</div>

{if $customfields}
{foreach from=$customfields key=num item=customfield}
    <div class="form-group">
        <label for="customfield{$customfield.id}">{$customfield.name}</label>
        <div class="controls">
            {$customfield.input} {$customfield.description}
        </div>
    </div>
{/foreach}
{/if}


<div class="form-actions">
    <input class="btn btn-primary" type="submit" name="save" value="{$LANG.clientareasavechanges}" />
    <input class="btn" type="reset" value="{$LANG.cancel}" />
</div>

</form>
