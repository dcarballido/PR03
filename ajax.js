function Validacion(){
	var user = document.getElementById('username').value;
	var pass = document.getElementById('password').value;
	if(user=='' && pass==''){
		document.getElementById('alerta').innerHTML = 'El campo usuario y contraseña son obligatorios';
                document.getElementById('username').style.border = '1px solid blue';
                document.getElementById('password').style.border = '1px solid blue';
		document.getElementById('alerta').style.display = 'block';
		return false;
	}else if(user == ''){
		document.getElementById('alerta').innerHTML = 'El campo usuario es obligatiorio';
                document.getElementById('username').style.border = '1px solid blue';
                document.getElementById('password').style.border = '1px solid #EAE3D7';
		document.getElementById('alerta').style.display = 'block';
		return false;
	}else if(pass == ''){
		document.getElementById('alerta').innerHTML = 'El campo contraseña es obligatiorio';
                document.getElementById('username').style.border = '1px solid #EAE3D7';
                document.getElementById('password').style.border = '1px solid blue';
		document.getElementById('alerta').style.display = 'block';
		return false;
	}else{
		return true;
	}
	
}