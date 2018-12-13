class MonitorController < ApplicationController

	layout "solover"
	
	def index
		@en_espera = FilaPuesto.where(estado:"Espera", fecha: Date.today).includes(:fila).order(:fila_id,:numero)
		@en_proceso = FilaPuesto.where(estado:"Proceso", fecha: Date.today).includes(:puesto).order(:puesto_id,:numero)
	end
end
