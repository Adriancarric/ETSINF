function checkinfo() {
	var alerta = "";
		
	var dni = document.getElementById("dni").value;
	if (dni == "") {
		alerta += "El campo DNI está vacío\n"
	} else {
		if (dni.length != 10) {
			alerta += "El DNI no tiene 10 digitos\n"
		} else {
			if (!isNaN(dni.substring(0, dni.indexOf("-")))) {
				alerta += "El DNI no es un número\n"
			} else {
				var letras = "TRWAGMYFPDXBNJZSQVHLCKET";
				var letra = letras[parseInt(dni) % 23]
				var new_letra = dni + "-" + letra
				if (new_letra != dni) {
					alerta += "La letra no corresponde con el numero del DNI\n"
				}
			}
		}
	}
	
	var nombre = document.getElementById("nombre").value;
	if (nombre == "") {
		alerta += "El campo nombre está vacío\n"
	} else {
		
		if (!nombre.includes(",")) {
			alerta += "Nombre y apellido no están separados por una coma\n"
		} else {
			var apellido = nombre.substring(0, nombre.indexOf(","));
			var subnombre = nombre.substring(nombre.indexOf(","), nombre.length);
			if (subnombre.length <= 1) {
				alerta += "No hay nombre detrás de la coma\n"
			}
			if (apellido.length <= 1) {
				alerta += "No hay apellido delante de la coma\n"
			}
		}
	}

	var correo = document.getElementById("email").value
	if (correo == "") {
		alerta += "El campo email está vacio\n"
	} else {
		if (!correo.includes("@")) {
			alerta += "El email no incluye @\n"
		} else {
			var usuario = correo.substring(0, email.indexOf("@"))
			var dominio = correo.substring(email.indexOf("@"), email.length)
			if (usuario.length <= 1) {
				alerta += "No hay un usuario de correo delante de la @\n"
			}
			if (dominio.length <= 1) {
				alerta += "No hay un dominio de correo detrás de la @\n"
			}
		}
	}

	var seleccionado = document.getElementById("select").value
	if (seleccionado == null) {
		alerta += "Se debe seleccionar al menos un departamento\n"
	}

	var t1 = document.getElementById("tarj1").value
	var t2 = document.getElementById("tarj2").value
	var t3 = document.getElementById("tarj3").value
	if (t1 == null && t2 == null && t3 == null) {
		alerta += "Se debe seleccionar al menos un tipo de tarjeta\n"
	}

	var num1 = document.getElementById("numTarj1").value
	var num2 = document.getElementById("numTarj2").value
	if (num1 != num2) {
		alerta += "Los números de tarjeta deben coincidir\n"
	} else {
		if (num1.length != 12) {
			alerta += "El numero de tarjeta debe tener 12 digitos\n"
		} else {
			if (num1.substring(0, 1) == 0) {
				alerta += "El numero de tarjeta no puede empezar por 0\n"
			}
		}
	}
	var d = new Date()
	d = Date.now()
	var date = document.getElementById("date")
	date.value = d.toString()
	console.log(d.toString())
	
	if (alerta != "") {
		alert(alerta)
		return false
	}
	
	return true
}