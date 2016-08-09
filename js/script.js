$(document).ready(function()
{
	//$(".posts").css({"height" : $(window).height()});
	$(".frameContent").css({"width" : $(window).width()});

	$(".postTitle").click(function()
	{
		window.open('http://reddit.com' + this.id, '_blank');
	});

	$(".linkContent").click(function()
	{
		// no more frame, instead doing new window
		// $("#" + this.id + "_next").html("<iframe scrolling='no' class='frameContent' frameBorder='0' src='" + atob(this.id) + "' style='overflow: hidden !important;ppointer-events:none;'>Unable to load frame</iframe>");
		// $(".frameContent").animate({"width" : ($(window).width()-2), "height" : ($(window).height()-120)});
		window.open(atob(this.id), '_blank');
	});

	$("#refreshit").click(function()
	{
		$("#refreshit").fadeOut('slow');
		$("#refreshing").fadeIn('slow');
		$("#allContent").html("<center><div style='color:green;'>Updating content takes a couple seconds! <br/> Please be patient</div></center>");
		$.ajax({url: "compile.pl", success: function(result)
		{
        	window.location.href = window.location.href;
    	}});
	})
});