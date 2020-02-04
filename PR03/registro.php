<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>REGISTRO EN MYCONTACTS</title>
	<link rel="stylesheet" href="style/styles.css">
	<script src="https://kit.fontawesome.com/3c607d37bd.js" crossorigin="anonymous"></script>
</head>
<script type="text/javascript" src="ajax.js"></script>
<!--DIV DE LA IMAGEN DE FONDO-->
<div>
	<body background="files/img/fondologin.jpg">
</div>
<!--TODO EL FORMULARIO DENTRO DE LA ETIQUETA CENTER-->
	<center>
	<form id="login" action="registro.proc.php" method="post" onsubmit="return ValidacionInsert()">

				<div class="tablainicio" style="margin-top: 50px;">
				<!--IMAGEN LOGO-->
				<img class="logo" src="files/img/logo3.jpg">

				<h2 class="titulologin">Regístrate en MyContacts</h2>
				</div>

			<table class="tablainicio">
			<tr>
				<th>
					<h2 class="titulologin">ID MyContacts</h2>
				</th>
				<th>
					<h2 class="titulologin">Nombre</h2>
				</th>
			</tr>
			<tr>
				<th>
					<input class="cajausu" type="text" name="username" id="username" placeholder="ID de MyContacts">
				</th>
				<th>
					<input class="cajausu" type="text" name="name" id="name" placeholder="Nombre de MyContacts">
				</th>
			</tr>
			<tr>
				<th>
					<h2 class="titulologin">Contraseña</h2>
				</th>
				<th>
					<h2 class="titulologin">Apellido</h2>
				</th>
			</tr>
			<tr>
				<th>
					<input class="cajacontra" type='password' placeholder="Contraseña de MyContacts" name='password' id="password">
				</th>
				<th>
					<input class="cajacontra" type='text' placeholder="Apellido de MyContacts" name='surname' id="surname">
				</th>
			</tr>
			<tr>
				<th>
					<h2 class="titulologin">Confirmar Contraseña</h2>
				</th>
				<th>
					<h2 class="titulologin">Teléfono</h2>
				</th>
			</tr>
			<tr>
				<th>
					<input class="cajacontra" type='password' placeholder="Contraseña de MyContacts" name='password2' id="password2">
				</th>
				<th>
					<input class="cajacontra" type='text' placeholder="Teléfono de MyContacts" name='telf' id="telf" maxlength="9">
				</th>
								<th>
					<!--BOTÓN DE ENVIAR FORMULARIO-->
					
				</th>
			</tr>
			<tr>
				<th>
					<p style="color: red;" id="coinciden" class="alerta"></p>
					<a style="text-decoration: none;" href="login.php"><h4 style="color: blue;">¿Ya tienes cuenta?</h4></a>
				</th>
				<th>
					<button style="color: blue; margin-left: -70px; width: 0px; height: 0px; border:0; font-family:Sanfrancisco;" href="login.php" type="submit">Regístrate</button>
				</th>
			</tr>
		</table>
		<!--MENSAJE DE LA VALICACIÓN JAVASCRIPT-->
		<p style="color: red;" id="alerta" class="alerta"></p>

	</form>
	</center>
</body>
</html>