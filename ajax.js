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

window.onload = consultar;
function objetoAjax(){
	var xmlhttp=false;
	try {
		xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
	} catch (e) {
		try {
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		} catch (E) {
			xmlhttp = false;
		}
	}
	if (!xmlhttp && typeof XMLHttpRequest!='undefined') {
	  xmlhttp = new XMLHttpRequest();
	}
	return xmlhttp;
}

/*Muestra registros de la base de datos*/
function consultar(){
	divResultado = document.getElementById('contactos');
	contacto = document.getElementById('contacto').value;
	var ajax2=objetoAjax();
	ajax2.open("POST", "./procesa/busqueda.php", true);
	if(contacto==''){
		ajax2.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
		ajax2.send("q=1");
	}else{

		ajax2.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
		ajax2.send("q="+contacto);
	}
		

	ajax2.onreadystatechange=function() {
		if (ajax2.readyState==4 && ajax2.status==200) {
			var respuesta2=JSON.parse(this.responseText);
			var tabla = '<table>';
			for(var i=0;i<respuesta2.length;i++) {

				tabla +='<tr onclick="infocontacto('+respuesta2[i].id_contact+')"><td>'+respuesta2[i].firstname_contact+' '+respuesta2[i].lastname_contact+'</td></tr>';
				
			}
			tabla+='</table>';
			divResultado.innerHTML=tabla;
		}
	}

}

// Visualizar info contacto

function infocontacto(id){

	// 2. Definimos el bloque que queremos que cambie
	divResultado = document.getElementById('infores');
	// 3. Inicializamos el objeto XHR
	ajax=objetoAjax();
	// 4. Especificamos la solicitud
	ajax.open('POST', './procesa/infoContacto.php', true);
	// 5. Configuramos el encabezado (POST)
	ajax.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
	// 6. Enviamos la solicitud
	ajax.send("id="+id)
	// 7. Definimos la función que se ejecutará cuando cambie la propiedad readyState
	ajax.onreadystatechange=function() {
	  	if (ajax.readyState==4) {
			// 8. Cambiamos el bloque del paso 2.
			divResultado.innerHTML = ajax.responseText
		}
	}
}

// Visualizar imagen nueva

function init() {
	var inputFile = document.getElementById('inputFile1');
	inputFile.addEventListener('change', mostrarImagen, false);
  }
  
  function mostrarImagen(event) {
	var file = event.target.files[0];
	var reader = new FileReader();
	reader.onload = function(event) {
	  var img = document.getElementById('img1');
	  img.src= event.target.result;
	}
	reader.readAsDataURL(file);
  }
  
  window.addEventListener('load', init, false);