<html>
<head>
<title>FibService</title>
</head>
  <body>

<!-- Uncomment Below html if input box is desired -->

<!--
    <FORM NAME ="form" METHOD ="GET" ACTION = "index.php">
      <INPUT TYPE = "TEXT" NAME = "integer" VALUE = "">
      <INPUT TYPE = "Submit">
    </FORM>
-->

    <?PHP
      $result = shell_exec('C:\cygwin64\bin\bash C:\cygwin64\home\Boscarino\scripts\fib.sh ' . $_GET['integer']);
      print ($result);
    ?>

  </body>
</html>