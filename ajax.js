/*function ValidacionRegistro(){
	var user = document.getElementById('username').value;
	var pass = document.getElementById('password').value;
	var pass2 = document.getElementById('password2').value;
	var name = document.getElementById('name').value;
	var surname = document.getElementById('surname').value;
	var telf = document.getElementById('telf').value;
	if(user == '' && pass=='' && pass2=='' && name=='' && surname=='' && telf==''){
		document.getElementById('alerta').innerHTML = 'El campo usuario, contraseña, confirmar contraseña, nombre, apellido y teléfono son obligatiorios';
                document.getElementById('username').style.border = '1px solid blue';
                document.getElementById('password').style.border = '1px solid blue';
                document.getElementById('password2').style.border = '1px solid blue';
                document.getElementById('name').style.border = '1px solid blue';
                document.getElementById('surname').style.border = '1px solid blue';
                document.getElementById('telf').style.border = '1px solid blue';
		document.getElementById('alerta').style.display = 'block';
		return false;
	}else if(user=='' && pass=='' && pass2=='' && name=='' && surname==''){
		document.getElementById('alerta').innerHTML = 'El campo usuario, contraseña, confirmar contraseña, nombre y apellido son obligatiorios';
                document.getElementById('username').style.border = '1px solid blue';
                document.getElementById('password').style.border = '1px solid blue';
                document.getElementById('password2').style.border = '1px solid blue';
                document.getElementById('name').style.border = '1px solid blue';
                document.getElementById('surname').style.border = '1px solid blue';
                document.getElementById('telf').style.border = '1px solid #EAE3D7';
		document.getElementById('alerta').style.display = 'block';
		return false;
	}else if(user=='' && pass=='' && pass2=='' && name=='' && telf==''){
		document.getElementById('alerta').innerHTML = 'El campo usuario, contraseña, confirmar contraseña, nombre y teléfono son obligatiorios';
                document.getElementById('username').style.border = '1px solid blue';
                document.getElementById('password').style.border = '1px solid blue';
                document.getElementById('password2').style.border = '1px solid blue';
                document.getElementById('name').style.border = '1px solid blue';
                document.getElementById('surname').style.border = '1px solid #EAE3D7';
                document.getElementById('telf').style.border = '1px solid blue';
		document.getElementById('alerta').style.display = 'block';
		return false;
	}else if(user=='' && pass=='' && pass2=='' && name=='' && telf==''){
		document.getElementById('alerta').innerHTML = 'El campo usuario, contraseña, confirmar contraseña, nombre y teléfono son obligatiorios';
                document.getElementById('username').style.border = '1px solid blue';
                document.getElementById('password').style.border = '1px solid blue';
                document.getElementById('password2').style.border = '1px solid blue';
                document.getElementById('name').style.border = '1px solid blue';
                document.getElementById('surname').style.border = '1px solid #EAE3D7';
                document.getElementById('telf').style.border = '1px solid blue';
		document.getElementById('alerta').style.display = 'block';
		return false;
	}else if(user=='' && pass2=='' && name=='' && surname==''){
		document.getElementById('alerta').innerHTML = 'El campo usuario, confirmar contraseña, nombre y apellido son obligatiorios';
                document.getElementById('username').style.border = '1px solid blue';
                document.getElementById('password').style.border = '1px solid #EAE3D7';
                document.getElementById('password2').style.border = '1px solid blue';
                document.getElementById('name').style.border = '1px solid blue';
                document.getElementById('surname').style.border = '1px solid blue';
                document.getElementById('telf').style.border = '1px solid #EAE3D7';
		document.getElementById('alerta').style.display = 'block';
		return false;
	}else if(user=='' && pass=='' && pass2=='' && name==''){
		document.getElementById('alerta').innerHTML = 'El campo usuario, contraseña, confirmar contraseña y nombre son obligatiorios';
                document.getElementById('username').style.border = '1px solid blue';
                document.getElementById('password').style.border = '1px solid blue';
                document.getElementById('password2').style.border = '1px solid blue';
                document.getElementById('name').style.border = '1px solid blue';
                document.getElementById('surname').style.border = '1px solid #EAE3D7';
                document.getElementById('telf').style.border = '1px solid #EAE3D7';
		document.getElementById('alerta').style.display = 'block';
		return false;
	}else if(user=='' && pass=='' && pass2==''){
		document.getElementById('alerta').innerHTML = 'El campo usuario, contraseña y confirmar contraseña son obligatiorios';
                document.getElementById('username').style.border = '1px solid blue';
                document.getElementById('password').style.border = '1px solid blue';
                document.getElementById('password2').style.border = '1px solid blue';
                document.getElementById('name').style.border = '1px solid #EAE3D7';
                document.getElementById('surname').style.border = '1px solid #EAE3D7';
                document.getElementById('telf').style.border = '1px solid #EAE3D7';
		document.getElementById('alerta').style.display = 'block';
		return false;
	}else if(user == '' && pass==''){
		document.getElementById('alerta').innerHTML = 'El campo usuario y contraseña es obligatiorio';
                document.getElementById('username').style.border = '1px solid blue';
                document.getElementById('password').style.border = '1px solid blue';
                document.getElementById('password2').style.border = '1px solid #EAE3D7';
		document.getElementById('alerta').style.display = 'block';
		return false;
	}else if(user == '' && pass2==''){
		document.getElementById('alerta').innerHTML = 'El campo usuario y confirmar contraseña son obligatiorios';
                document.getElementById('username').style.border = '1px solid blue';
                document.getElementById('password').style.border = '1px solid #EAE3D7';
                document.getElementById('password2').style.border = '1px solid blue';
		document.getElementById('alerta').style.display = 'block';
		return false;
	}else if(pass == '' && pass2==''){
		document.getElementById('alerta').innerHTML = 'El campo contraseña y confirmar contraseña son obligatiorios';
                document.getElementById('username').style.border = '1px solid #EAE3D7';
                document.getElementById('password').style.border = '1px solid blue';
                document.getElementById('password2').style.border = '1px solid blue';
		document.getElementById('alerta').style.display = 'block';
		return false;
	}else if(user == ''){
		document.getElementById('alerta').innerHTML = 'El campo usuario es obligatiorio';
                document.getElementById('username').style.border = '1px solid blue';
                document.getElementById('password').style.border = '1px solid #EAE3D7';
                document.getElementById('password2').style.border = '1px solid #EAE3D7';
		document.getElementById('alerta').style.display = 'block';
		return false;
	}else if(pass == ''){
		document.getElementById('alerta').innerHTML = 'El campo contraseña es obligatiorio';
                document.getElementById('username').style.border = '1px solid #EAE3D7';
                document.getElementById('password').style.border = '1px solid blue';
                document.getElementById('password2').style.border = '1px solid #EAE3D7';
		document.getElementById('alerta').style.display = 'block';
		return false;
	}else if(pass2 == ''){
		document.getElementById('alerta').innerHTML = 'El campo confirmar contraseña es obligatiorio';
                document.getElementById('username').style.border = '1px solid #EAE3D7';
                document.getElementById('password').style.border = '1px solid #EAE3D7';
                document.getElementById('password2').style.border = '1px solid blue';
		document.getElementById('alerta').style.display = 'block';
		return false;
	}else if(pass != pass2){
		document.getElementById('alerta').innerHTML = 'Las contraseñas no coinciden';
                document.getElementById('username').style.border = '1px solid #EAE3D7';
                document.getElementById('password').style.border = '1px solid blue';
                document.getElementById('password2').style.border = '1px solid blue';
		document.getElementById('alerta').style.display = 'block';
		return false;
	}else{
		return true;
	}
	
}*/
function ValidacionLogin(){
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
function ValidacionInsert(){
    var user = document.getElementById('username').value;
	var pass = document.getElementById('password').value;
	var pass2 = document.getElementById('password2').value;
	var name = document.getElementById('name').value;
	var surname = document.getElementById('surname').value;
	var telf = document.getElementById('telf').value;
	var alerta='';
	var coinciden='';
	var respuesta;
    
    	if(user==''){
    		alerta=alerta+' (ID MyContacts)';
    		showErrors=true;
    		document.getElementById('username').style.border = '1px solid blue';
        }else{
        	document.getElementById('username').style.border = '1px solid #EAE3D7';
        }
        if(pass==''){
            alerta=alerta+' (Contraseña)';
            showErrors=true;
            document.getElementById('password').style.border = '1px solid blue';
        }else{
        	document.getElementById('password').style.border = '1px solid #EAE3D7';
        }
        if(pass2==''){
            alerta=alerta+' (Confirmar Contraseña)';
            showErrors=true;
            document.getElementById('password2').style.border = '1px solid blue';
        }else{
        	document.getElementById('password2').style.border = '1px solid #EAE3D7';
        }
        if(name==''){
            alerta=alerta+' (Nombre)';
            showErrors=true;
            document.getElementById('name').style.border = '1px solid blue';
        }else{
        	document.getElementById('name').style.border = '1px solid #EAE3D7';
        }
        if(surname==''){
            alerta=alerta+' (Apellido)';
            showErrors=true;
            document.getElementById('surname').style.border = '1px solid blue';
        }else{
        	document.getElementById('surname').style.border = '1px solid #EAE3D7';
        }
        if(telf==''){
            alerta=alerta+' (Telefono)';
            showErrors=true;
            document.getElementById('telf').style.border = '1px solid blue';
        }else{
        	document.getElementById('telf').style.border = '1px solid #EAE3D7';
        }
        if(showErrors){
            document.getElementById('alerta').innerHTML=alerta+' son obligatiorios';
            respuesta=false;
        }else{
            document.getElementById('alerta').innerHTML='';
            respuesta=true;
        }
        if(pass!='' && pass2!='' && pass!=pass2){
            coinciden=coinciden+' Las Contraseñas no coinciden';
            showErrors=true;
            document.getElementById('coinciden').innerHTML=coinciden;
        }else{
        	coinciden='';
        	document.getElementById('coinciden').innerHTML=coinciden;
        }
        alerta='Errores:<br>';
        showErrors=false;
return respuesta;
}