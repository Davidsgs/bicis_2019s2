import bicis.*

class Deposito {
	const property bicis = []
	var idsBicis = 1
	
	method sacarBici(bici){
		bicis.remove(bici)
	}
	
	method agregarBici(bici){
		bici.id(idsBicis)
		bicis.add(bici)
		idsBicis += 1
	}
	
	method coleccionBicisRapidas(){
		return bicis.filter({bici => bici.velocidadCrucero() > 25})
	}
	
	method coleccionDeMarcas(){
		const coleccion = #{}
		coleccion.addAll(bicis.map({bici => bici.marca()}))
		return coleccion
	}
	
	method esNocturno(){
		return bicis.all({bici => bici.tieneLuz()})
	}
	
	method tieneBiciParaLlevarCarga(kilos){
		return bicis.any({bici => bici.carga() > kilos})
	}
	
	method marcaBiciMasRapida(){
		return self.coleccionBicisRapidas().max({bici => bici.velocidadCrucero()}).marca()
	}
	
	method cargaTotalBicisLargas(){
		return bicis.filter({bici => bici.largo() > 170}).sum({bici => bici.carga()})
	}
	
	method cantidadBicisSinAccesorios(){
		return bicis.count({bici => bici.accesorios() == null})
	}
	
	method bicisCompanierasDe(unaBici){
		return bicis.filter({bici => bici.id() != unaBici.id() and bici.largo().between(unaBici.largo()-10,unaBici.largo()+10) and bici.marca() == unaBici.marca()})
	}
}
