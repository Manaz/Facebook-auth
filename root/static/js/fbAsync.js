window.fbAsyncInit = function() {
	console.log("Facebook loaded; initializing sdk.");
	FB.init({
		appId: '428406530544107',
		cookie:true,
		status:true,
		oauth:true,
		xfbml:true
	});
};
(function(d){
	var js, id = 'facebook-jssdk'; if (d.getElementById(id)) {return;}
	js = d.createElement('script'); js.id = id; js.async = true;
	js.src = "//connect.facebook.net/en_US/all.js";
	d.getElementsByTagName('head')[0].appendChild(js);
}(document));