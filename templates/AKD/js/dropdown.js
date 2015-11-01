function dropdown_menu()
{
	// k_menu controlls the dropdown menus and improves them with javascript
	
	/*jQuery(".nav a").removeAttr('title');*/
	jQuery(" #nav ul ul ").css({display: "none"}); // Opera Fix
	
	//smooth drop downs
	jQuery("#nav ul li").each(function()
	{	
		
		var $sublist = jQuery(this).find('ul:first');
		
		jQuery(this).hover(function()
		{	
			$sublist.stop().css({overflow:"hidden", height:"auto", display:"none"}).slideDown(400, function()
			{
				jQuery(this).css({overflow:"visible", height:"auto"});
			});	
		},
		function()
		{	
			$sublist.stop().slideUp(400, function()
			{	
				jQuery(this).css({overflow:"hidden", display:"none"});
			});
		});	
	});

	//  Menu mouse hovered background
}

jQuery(function(){
	dropdown_menu();


});
