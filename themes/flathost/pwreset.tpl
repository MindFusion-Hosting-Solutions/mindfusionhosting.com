 
{include file="$template/pageheader.tpl" title=$LANG.pwreset}

{if $success}

  <div class="alert alert-success">
    <p>{$LANG.pwresetvalidationsent}</p>
  </div>

  <p>{$LANG.pwresetvalidationcheckemail}

  <br />
  <br />
  <br />
  <br />

{else}

{if $errormessage}
<div class="alert alert-danger textcenter">
    <p>{$errormessage}</p>
</div>
{/if}

<form method="post" action="pwreset.php"  class="form-stacked">
<input type="hidden" name="action" value="reset" />

{if $securityquestion}

<input type="hidden" name="email" value="{$email}" />

<p>{$LANG.pwresetsecurityquestionrequired}</p>


<div class="logincontainer">

    <fieldset class="form-group">

        <div class="form-group">
          <label for="answer">{$securityquestion}:</label>
          <div class="controls">
            <input class="form-control" name="answer" id="answer" type="text" value="{$answer}" />
          </div>
        </div>

        <div>
          <p align="center"><input type="submit" class="btn btn-primary" value="{$LANG.pwresetsubmit}" /></p>
        </div>

    </fieldset>

</div>

{else}

<p>{$LANG.pwresetdesc}</p>

<div class="logincontainer">

    <fieldset class="form-group">

        <div class="form-group">
          <label for="email">{$LANG.loginemail}:</label>
          <div class="controls">
            <input class="form-control" name="email" id="email" type="text" />
          </div>
        </div>

        <div>
          <p align="center"><input type="submit" class="btn btn-primary" value="{$LANG.pwresetsubmit}" /></p>
        </div>

    </fieldset>

</div>

{/if}

</form>

{/if}
 