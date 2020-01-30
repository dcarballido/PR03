<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>INICIAR SESION EN MYCONTACTS</title>
	<link rel="stylesheet" href="style/styles.css">
	<script src="https://kit.fontawesome.com/3c607d37bd.js" crossorigin="anonymous"></script>
</head>
<script type="text/javascript" src="ajax.js"></script>
<body>
	<center>
	<form id="login" action="login.post.php" method="post" onsubmit="return Validacion()">
		<table class="tablainicio">
			<tr>
				<th>Login</th>
			</tr>
			<tr>
				<th>
					<h2>Iniciar sesión en MyContacts</h2>
				</th>
			</tr>
			<tr>
				<th>
					<input class="cajausu" type="text" name="username" id="username" placeholder="Introduce el Usuario">
				</th>
			</tr>
			<tr>
				<th>
					<h2>Contraseña</h2>
				</th>
			</tr>
			<tr>
				<th>
					<input class="cajacontra" type='password' placeholder="Introduce contraseña" name='password' id="password" maxlength="50">
				</th>
								<th>
					<button class="far fa-arrow-alt-circle-right fa-1x" type="submit"></button>
				</th>
			</tr>
			<tr>
				<th>
					
				</th>
			</tr>
		</table>
		<p id="alerta" class="alerta"></p>
	</form>
	</center>
</body>
</html>