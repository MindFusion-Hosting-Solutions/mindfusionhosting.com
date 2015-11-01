<script type="text/javascript" src="includes/jscript/statesdropdown.js"></script>

{include file="$template/pageheader.tpl" title=$LANG.clientregistertitle desc=$LANG.registerintro}

{if $noregistration}

    <div class="alert alert-danger">
        <p>{$LANG.registerdisablednotice}</p>
    </div>

{else}

{if $errormessage}
<div class="alert alert-danger">
    <p class="bold">{$LANG.clientareaerrors}</p>
    <ul>
        {$errormessage}
    </ul>
</div>
{/if}

<form class="form" method="post" action="{$smarty.server.PHP_SELF}">
<input type="hidden" name="register" value="true" />

<fieldset>

<div class="row">
<div class="col-sm-6">

    <div class="form-group">
        <label for="firstname">{$LANG.clientareafirstname}</label>
            <input class="form-control" type="text" name="firstname" id="firstname" value="{$clientfirstname}"{if in_array('firstname',$uneditablefields)} disabled="" class="disabled"{/if} />
    </div>

    <div class="form-group">
        <label for="lastname">{$LANG.clientarealastname}</label>
            <input class="form-control" type="text" name="lastname" id="lastname" value="{$clientlastname}"{if in_array('lastname',$uneditablefields)} disabled="" class="disabled"{/if} />
    </div>

    <div class="form-group">
        <label for="companyname">{$LANG.clientareacompanyname}</label>
            <input class="form-control" type="text" name="companyname" id="companyname" value="{$clientcompanyname}"{if in_array('companyname',$uneditablefields)} disabled="" class="disabled"{/if} />
    </div>

    <div class="form-group">
        <label for="email">{$LANG.clientareaemail}</label>
            <input class="form-control" type="text" name="email" id="email" value="{$clientemail}"{if in_array('email',$uneditablefields)} disabled="" class="disabled"{/if} />
    </div>

    <div class="form-group">
        <label for="password">{$LANG.clientareapassword}</label>
            <input class="form-control" type="password" name="password" id="password" value="{$clientpassword}" />
    </div>

    <div class="form-group">
        <label for="password2">{$LANG.clientareaconfirmpassword}</label>
            <input class="form-control" type="password" name="password2" id="password2" value="{$clientpassword2}" />
    </div>

    <div class="form-group">
        <label for="passstrength">{$LANG.pwstrength}</label>
            {include file="$template/pwstrength.tpl"}
    </div>

</div>
<div class="col-sm-6">

    <div class="form-group">
        <label for="address1">{$LANG.clientareaaddress1}</label>
            <input class="form-control" type="text" name="address1" id="address1" value="{$clientaddress1}"{if in_array('address1',$uneditablefields)} disabled="" class="disabled"{/if} />
    </div>

    <div class="form-group">
        <label for="address2">{$LANG.clientareaaddress2}</label>
            <input class="form-control" type="text" name="address2" id="address2" value="{$clientaddress2}"{if in_array('address2',$uneditablefields)} disabled="" class="disabled"{/if} />
    </div>

    <div class="form-group">
        <label for="city">{$LANG.clientareacity}</label>
            <input class="form-control" type="text" name="city" id="city" value="{$clientcity}"{if in_array('city',$uneditablefields)} disabled="" class="disabled"{/if} />
    </div>

  <div class="form-group">
        <label for="state">{$LANG.clientareacountry}</label>
            <div>{$clientcountriesdropdown}</div>
    </div>

    <div class="form-group">
        <label for="state">{$LANG.clientareastate}</label>
            <div><input class="form-control" type="text" name="state" id="state" value="{$clientstate}"{if in_array('state',$uneditablefields)} disabled="" class="disabled"{/if} /></div>
    </div>

    <div class="form-group">
        <label for="postcode">{$LANG.clientareapostcode}</label>
            <input class="form-control" type="text" name="postcode" id="postcode" value="{$clientpostcode}"{if in_array('postcode',$uneditablefields)} disabled="" class="disabled"{/if} />
    </div>


    <div class="form-group">
        <label for="phonenumber">{$LANG.clientareaphonenumber}</label>
            <div><input class="form-control" type="text" name="phonenumber" id="phonenumber" value="{$clientphonenumber}"{if in_array('phonenumber',$uneditablefields)} disabled="" class="disabled"{/if} /></div>
    </div>

</div>
</div>

</fieldset>

<fieldset class="row">

{if $currencies}
    <div class="form-group col-sm-6">
        <label for="currency">{$LANG.choosecurrency}</label>
        <div id="currency">
            <select class="form-control" name="currency">
            {foreach from=$currencies item=curr}
            <option value="{$curr.id}"{if !$smarty.post.currency && $curr.default || $smarty.post.currency eq $curr.id } selected{/if}>{$curr.code}</option>
            {/foreach}
            </select>
        </div>
    </div>
{/if}

{foreach key=num item=customfield from=$customfields}
    <div class="form-group">
        <label for="customfield{$customfield.id}">{$customfield.name}</label>
            {$customfield.input} {$customfield.description}
    </div>
{/foreach}

{if $securityquestions}
    <div class="form-group">
        <label for="securityqans">{$LANG.clientareasecurityquestion}</label>
            <select name="securityqid" id="securityqid">
            {foreach key=num item=question from=$securityquestions}
                <option value={$question.id}>{$question.question}</option>
            {/foreach}
            </select>
    </div>
    <div class="form-group">
        <label for="securityqans">{$LANG.clientareasecurityanswer}</label>
            <input type="password" name="securityqans" id="securityqans" />
    </div>
{/if}

</fieldset>

{if $capatacha}
<h3>{$LANG.captchatitle}</h3>
<p>{$LANG.captchaverify}</p>
{if $capatacha eq "recaptcha"}
<div align="center">{$recapatchahtml}</div>
{else}
<p align="center"><img src="includes/verifyimage.php" align="middle" /> <input type="text" name="code" size="10" maxlength="5" class="input-small" /></p>
{/if}
{/if}

<br />

{if $accepttos}
<div class="form-group">
    <label id="tosagree"></label>
       <div class="checkbox"> <label>
            <input type="checkbox" name="accepttos" id="accepttos" value="on" >
            {$LANG.ordertosagreement} </label> </div><a href="{$tosurl}" target="_blank">{$LANG.ordertos}</a>
    </div>
</div>
{/if}

<p align="center"><input class="btn btn-lg btn-success" type="submit" value="{$LANG.clientregistertitle}" /></p>

</form>

{/if}

<br />
<br />