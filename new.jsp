<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 
    <script type="text/javascript">
      /*************************************************
       * Example showing how to simulate pressing a key.
       *************************************************/
 
      function pressChar(char)
      {
        try
        {
          // Create the key press event.
          var pressEvent = document.createEvent('KeyboardEvent');
          pressEvent.initKeyEvent("keypress", true, true, window, 
                                    false, false, false, false, 
                                    0, char.charCodeAt(0));
 
          var input = document.getElementById('input_field'); // Get the element where you want to press.
 
          input.dispatchEvent(pressEvent); // Press the key.
        }
        catch (e) {
            alert ("Your browser does not support this example!");
        }
      }
    </script>
 
 
    <title>Simulate pressing a key</title>
  </head>
 
  <body>
    <button onclick="pressChar('s')">Simulate pressing the 's' key in the input field.</button>
    <input type="text" id="input_field" />
  </body>
 
</html>