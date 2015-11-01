{include file="$template/pageheader.tpl" title=$LANG.contacttitle desc=$LANG.contactheader}

{if $sent} <br />
<div class="alert alert-success textcenter">
  <p><strong>{$LANG.contactsent}</strong></p>
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
<form method="post" action="contact.php?action=send" class="form-stacked center95">
  <fieldset>
    <div class="row">
      <div class="col-sm-6">
        <div class="form-group">
          <label for="name">{$LANG.supportticketsclientname}</label>
          <input class="form-control" type="text" name="name" id="name" value="{$name}" />
        </div>
      </div>
      <div class="col-sm-6">
        <div class="form-group">
          <label for="email">{$LANG.supportticketsclientemail}</label>
          <input class="form-control" type="text" name="email" id="email" value="{$email}" />
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-sm-12">
        <div class="form-group">
          <label for="subject">{$LANG.supportticketsticketsubject}</label>
          <input class="form-control" type="text" name="subject" id="subject" value="{$subject}" />
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-sm-12">
        <div class="form-group">
          <label for="message">{$LANG.contactmessage}</label>
          <textarea class="form-control" name="message" id="message" rows="12" >{$message}</textarea>
        </div>
      </div>
    </div>
  </fieldset>
  {if $capatacha}
  <p><strong>&nbsp;&raquo;&nbsp;{$LANG.captchatitle}</strong></p>
  <p>{$LANG.captchaverify}</p>
  {if $capatacha eq "recaptcha"}
  <div align="center">{$recapatchahtml}</div>
  {else}
  <div class="form-group"><img src="includes/verifyimage.php" align="middle" />
    <input type="text" class="input-small" name="code" size="10" maxlength="5" />
  </div>
  {/if}
  {/if}
  <p align="center">
    <input type="submit" value="{$LANG.contactsend}" class="btn btn-success btn-lg" />
  </p>
</form>
{/if} <br />
<br />
<br />
