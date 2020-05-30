class Farolito {
	method peso(){
		return 0.5
	}
	method carga(){
		return 0
	}
	method esLuminoso(){
		return true
	}
}

class Canasto{
	var property volumen
	
	method peso(){
		return volumen / 10
	}
	
	method carga(){
		return volumen * 2
	}
	
	method esLuminoso(){
		return false
	}
}

class Morral{
	var property largo
	var property tieneOjoDeGato
	
	method peso(){
		return 1.2
	}
	
	method carga(){
		return largo / 3
	}
	
	method esLuminoso(){
		return tieneOjoDeGato
	}
}

/*
******************************************************************************************
							Respuesta Pregunta 5:
	Para agregar nuevos accesorio sería necesario pricipalmente,saber 
que hacen, para luego escribir el codigo y evaluar si deben agregarse nuevos
metodos, de ser así, deben agregarse esos nuevos metodos en los otros objetos para así
hacer que todos los accesorios entiendan el mismo mensaje al momento de hacer una consulta
a todos los accesorios cuando estén en la bicicleta. Haciendo que estos seán polimorficos
entre sí.
******************************************************************************************			
*/
