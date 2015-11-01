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
          <li>+1866-456-1078</li>
          <li></li>
        </ul>
      </div>
      <div class="col-sm-4 col-md-2">
        <p>FOLLOW US</p>
        <ul>
          <li><a href="http://twitter.com/MindFusionHost" target="_blank">Follow on Twitter</a></li>
          <li><a href="https://www.facebook.com/mfhosting?ref=bookmarks" target="_blank">Like us on Facebook</a></li>
          <!-- li><a href="http://surjithctly.in" target="_blank">Join on Linkedin</a> </li -->
        </ul>
      </div>
      <div class="col-sm-4 col-md-2">
        <p>COMPANY</p>
        <ul>
          <li> <a href="http://blog.mindfusionhosting.com/about-us">About us</a></li>
          <li><a href="http://blog.mindfusionhosting.com/recent-posts">Latest from Blog</a></li>
          <li><a href="http://blog.mindfusionhosting.com/about-us/our-team">Our Team</a></li>
        </ul>
      </div>
      <div class="col-sm-4 col-md-2">
        <p>EMAIL US</p>
        <ul>
          <li><a href="mailto:support@mindfusionhosting.com" target="_blank"></a></li>
          <!-- li><a href="mailto:info@mindfusionhosting.com" target="_blank"></a></li -->
        </ul>
      </div>
      
      <div class="col-sm-4 col-md-2">
        <p>LEGAL TERMS</p>
        <ul>
          <li><a href="http://blog.mindfusionhosting.com/tos">Terms of use</a></li>
          <li><a href="http://blog.mindfusionhosting.com/privacy">Privacy Policy</a></li>
        </ul>
      </div>
      <div class="col-sm-4 col-md-2" style="display:none;">
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