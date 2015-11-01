

{if $pagetitle eq $LANG.carttitle}</div>{/if}

    </div>
</div>
 

<!--===== Flathost  Footer =====-->

<div class="footer">
  <div class="container">
    <div class="row footerlinks">
      <div class="col-sm-4 col-md-2">
        <p>CALL US</p>
        <ul>
          <li> +1 4528 254 247</li>
          <li>+1 4002 188 355</li>
        </ul>
      </div>
      <div class="col-sm-4 col-md-2">
        <p>FOLLOW US</p>
        <ul>
          <li><a href="http://twitter.com/surjithctly" target="_blank">Follow on Twitter</a></li>
          <li><a href="http://web3canvas.com" target="_blank">Like us on Facebook</a></li>
          <li><a href="http://surjithctly.in" target="_blank">Join on Linkedin</a> </li>
        </ul>
      </div>
      <div class="col-sm-4 col-md-2">
        <p>COMPANY</p>
        <ul>
          <li> <a href="#">About us</a></li>
          <li><a href="#">Latest from Blog</a></li>
          <li><a href="#">Our Team</a></li>
        </ul>
      </div>
      <div class="col-sm-4 col-md-2">
        <p>EMAIL US</p>
        <ul>
          <li><a href="mailto:support@mail.in" target="_blank">support@mail.com</a></li>
          <li><a href="mailto:mail@mail.in" target="_blank">sales@mail.com</a></li>
        </ul>
      </div>
      
      <div class="col-sm-4 col-md-2">
        <p>LEGAL TERMS</p>
        <ul>
          <li><a href="#">Terms of use</a></li>
          <li><a href="#">Privacy Policy</a></li>
        </ul>
      </div>
      <div class="col-sm-4 col-md-2">
        <p>Language</p>
        <ul>
          <li> {if $langchange}<div id="languagechooser">{$setlanguage}</div>{/if} </li>
        </ul>
      </div>
    </div>
    <div class="row copyright">
      <div class="pull-right hidden-xs"><img src="templates/{$template}/img/logo-footer.png" alt="logo"></div>
      <p>{$LANG.copyright} &copy; {$date_year} {$companyname}. {$LANG.allrightsreserved}.</p>
    </div>
  </div>
</div>

{$footeroutput}

</body>
</html>