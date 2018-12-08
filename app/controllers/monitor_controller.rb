class MonitorController < ApplicationController
	def index
		@fila_puestos = FilaPuesto.where(estado:"Espera", fecha: Date.today).includes(:fila).order(:fila_id,:numero)
  		$nom_mod = "Monitor"
	end
end
