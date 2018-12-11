class AtenderController < ApplicationController
  
  def index
  	@fila = Fila.find(1)
  	@fila_puestos = @fila.fila_puestos.where(fecha: Date.today)
  	$nom_mod = "Atender"
  end
end
