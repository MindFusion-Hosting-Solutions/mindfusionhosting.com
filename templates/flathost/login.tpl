

{include file="$template/pageheader.tpl" title=$LANG.login}

{if $incorrect}
<div class="alert alert-danger textcenter">
    <p>{$LANG.loginincorrect}</p>
</div>
{/if}

<form method="post" action="{$systemsslurl}dologin.php" class="form">

<div class="logincontainer">

    <fieldset>

        <div class="form-group">
                <input class="form-control" name="username" id="username" type="text" placeholder="{$LANG.loginemail}" />
        </div>
        <div class="form-group">
                <input class="form-control" name="password" id="password" type="password" placeholder="{$LANG.loginpassword}"/>
        </div>

        <div class="form-group">
        <div class="checkbox"><label><input type="checkbox" name="rememberme"{if $rememberme} checked="checked"{/if} /> {$LANG.loginrememberme}</label></div>
          <div class="loginbtn"><input id="login" type="submit" class="btn btn-block btn-success btn-lg" value="{$LANG.loginbutton}" /></div>
           </div>
          <p><a href="pwreset.php">{$LANG.loginforgotteninstructions}</a></p>
       

    </fieldset>

</div>

</form>

<script type="text/javascript">
$("#username").focus();
</script>
