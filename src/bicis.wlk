import accesorios.*

class Bicicleta{
	var id = 0
	var property rodado
	var property largo
	var property marca
	const property accesorios = []
	
	method id(){
		return id
	}
	
	method id(numero){
		id = numero
	}
	
	method ponerAccesorio(accesorio){
		accesorios.add(accesorio)
	}
	
	method sacarAccesorio(accesorio){
		accesorios.remove(accesorio)
	}
	
	method altura(){
		return rodado * 2.5 + 15
	}
	
	method velocidadCrucero(){
		if(largo > 120){
			return rodado + 6
		}else{
			return rodado + 2
		}
	}
	
	method carga(){
		return accesorios.sum({accesorio => accesorio.carga()})
	}
	
	method peso(){
		return rodado/2 + accesorios.sum({accesorio => accesorio.peso()})
	}
	
	method tieneLuz(){
		return accesorios.any({accesorio => accesorio.esLuminoso()})
	}
	
	method cantidadAccesoriosLivianos(){
		return accesorios.count({accesorio => accesorio.peso() < 1})
	}
}