<!doctype html>
<html>
<head>

</head>
<body>

<%= request.getParameter("name") %>

<script>
window.open("http://fotoflexer.com/API/API_Loader_v1_01.php" + 
"?ff_image_url=http://www.learningflare.com/create/Test.jpg&ff_" + 
"callback_url=http://www.learningflare.com/create/new.jsp&ff_cancel_" + 
"url=http://www.learningflare.com/create/close.jsp&ff_lang=en-US");
</script>

<h1 style="font-size:48px">Let's making image!!</h1>
</body>
</html>
