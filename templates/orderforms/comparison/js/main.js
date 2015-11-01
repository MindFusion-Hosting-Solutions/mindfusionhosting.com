// Do not enforce state input client side
var stateNotRequired = true;

jQuery(document).ready(function(){
    jQuery("input.cartbutton:button,input.cartbutton:submit").button();
    jQuery("input:radio,input:checkbox").css('border','0');

    /**
     * Loop through each aheader and bheader div and find the largest height.
     * Then set all the aheader, bheader and featureheader heights to be the same.
     */
    var maxHeight = -1;
    jQuery('.aheader, .bheader').each(function() {
        maxHeight = maxHeight > jQuery(this).height() ? maxHeight : jQuery(this).height();
    });
    jQuery('.aheader, .bheader, .featureheader').each(function() {
        jQuery(this).height(maxHeight);
    });
});

function recalctotals() {
    jQuery.post("cart.php", 'ajax=1&a=confproduct&calctotal=true&'+jQuery("#orderfrm").serialize(),
    function(data){
        jQuery("#producttotal").html(data);
    });
}

function showcustomns() {
    jQuery(".hiddenns").fadeToggle();
}
function domaincontactchange() {
    if (jQuery("#domaincontact").val()=="addingnew") {
        jQuery("#domaincontactfields").slideDown();
    } else {
        jQuery("#domaincontactfields").slideUp();
    }
}
function showCCForm() {
    jQuery("#ccinputform").slideDown();
}
function hideCCForm() {
    jQuery("#ccinputform").slideUp();
}
function useExistingCC() {
    jQuery(".newccinfo").hide();
}
function enterNewCC() {
    jQuery(".newccinfo").show();
}

function applypromo() {
    jQuery.post("cart.php", { a: "applypromo", promocode: jQuery("#promocode").val() },
    function(data){
        if (data) alert(data);
        else window.location='cart.php?a=checkout';
    });
}

function domaincontactchange() {
    if (jQuery("#domaincontact").val()=="addingnew") {
        jQuery("#domaincontactfields").slideDown();
    } else {
        jQuery("#domaincontactfields").slideUp();
    }
}

function showloginform() {
    jQuery("#loginfrm").slideToggle();
    jQuery("#signupfrm").slideToggle();
    if (jQuery("#custtype").val()=="new") {
        jQuery("#custtype").val("existing");
    } else {
        jQuery("#custtype").val("new");
    }
}
