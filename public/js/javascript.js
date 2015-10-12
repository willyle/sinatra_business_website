$(document).ready(function(){
<<<<<<< HEAD
	$("li").on("mouseover",function(){
		$(this).css("background-color", "grey");
	});

	$("li").on("mouseout",function(){
		$(this).css("background-color", "#e9e9e9");
=======
	//hovering effect for nav bar
	$("a").on("mouseover",function(){
		$(this).closest("li").css("background-color", "gray");
	});

	$("a").on("mouseout",function(){
		$(this).closest("li").css("background-color", "#e9e9e9");
>>>>>>> 92ba35182e15c2b7661ea86f1a02b479694d1ea5
	});

	//obtaining width of container to move log-in/sign-u[] box to the right side
	var width,move;
	window.onresize = window.onload = function() {
		width = $("#container").innerWidth();
		move = width-200;
		console.log(move);
		$("#login").css({left: move});
		$("#signup").css({left: move});
	}

	//display and hide log-in and sign-up
	var login = false;
	var signup = false;

	$("#login_button").on("click", function(){
		if(login === false){
			login = true;
			signup = false;
			$("#login").removeClass("hide").addClass("show");
			$("#signup").removeClass("show").addClass("hide");
		}
		else{
			login = false;
			$("#login").removeClass("show").addClass("hide");
		}
	});

	$("#signup_button").on("click", function(){
		if(signup === false){
			signup = true;
			login = false;
			$("#signup").removeClass("hide").addClass("show");
			$("#login").removeClass("show").addClass("hide");
		}
		else{
			signup = false;
			$("#signup").removeClass("show").addClass("hide");
		}
	});
});