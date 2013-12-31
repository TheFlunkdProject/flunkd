<!doctype html>
<html>
<head>

</head>
<body>


<%= "what is this..." %>

<script>
	var ff_image_url = "http://www.learningflare.com/create/Test.jpg";
	var ff_callback_url = "http://www.learningflare.com/create/new.jsp";
	var ff_cancel_url = "http://www.purple.com";
	var ff_lang = "en-US";
	function ff_setup() {
	ff_activate();
	}
</script>

<script>
function ff_activate(){
	window.open="http://fotoflexer.com/API/API_Loader_v1_01.php?ff_image_url="+ff_image_url+
	"&ff_callback_url="+ff_callback_url+"&ff_cancel_url="+ff_cancel_url+"&ff_lang="+ff_lang;
}
</script>
<script>
ff_setup();
</script>
<h1 style="font-size:48px">Let's editing image!!</h1>
</body>
</html>
