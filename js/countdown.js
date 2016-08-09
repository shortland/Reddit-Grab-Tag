$(document).ready(function()
{
	var time = 600;

	var radioButtonTagging = (function()
	{
	    $("#countdown").html(time); 
	    doit();
	});

	function doit()
	{
		time = time - 1;
		if(time == -1)
		{
			$("*").fadeOut(10000);
			return;
		}
		setTimeout(radioButtonTagging, 1000);
	}

	doit();
});