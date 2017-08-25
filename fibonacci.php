<?PHP
	$result = shell_exec('C:\cygwin64\bin\bash C:\cygwin64\home\Boscarino\scripts\math.sh fib ' . $_GET['integer']);
	header('Content-Type: application/json');
	echo json_encode($result);
?>
