<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>INICIAR SESION EN MYCONTACTS</title>
	<link rel="stylesheet" href="style/styles.css">
	<script src="https://kit.fontawesome.com/3c607d37bd.js" crossorigin="anonymous"></script>
</head>
<script type="text/javascript" src="ajax.js"></script>
<div>
	<body background="files/img/fondologin.jpg">
</div>

	<center>
	<form id="login" action="login.proc.php" method="post" onsubmit="return ValidacionLogin()">
		<table class="tablainicio">
			<tr>
				<th><img class="logo" src="files/img/logo3.jpg"></th>
			</tr>
			<tr>
				<th>
					<h2 class="titulologin">Iniciar sesión en MyContacts</h2>
				</th>
			</tr>
			<tr>
				<th>
					<h2 class="titulologin">ID MyContacts</h2>
				</th>
			</tr>
			<tr>
				<th>
					<input class="cajausu" type="text" name="username" id="username" placeholder="ID de MyContacts">
				</th>
			</tr>
			<tr>
				<th>
					<h2 class="titulologin">Contraseña</h2>
				</th>
			</tr>
			<tr>
				<th>
					<input class="cajacontra" type='password' placeholder="Contraseña de MyContacts" name='password' id="password" maxlength="50">
				</th>
								<th>
					<button class="far fa-arrow-alt-circle-right fa-1x" type="submit"></button>
				</th>
			</tr>
			<tr>
				<th>
					<a style="text-decoration: none;" href="registro.php"><h4 style="color: blue;">¿No estás registrado?</h4></a>
				</th>
			</tr>
		</table>
		<p id="alerta" class="alerta"></p>
	</form>
	</center>
</body>
</html>