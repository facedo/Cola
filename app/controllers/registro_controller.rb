class RegistroController < ApplicationController

  def registrar
    $nom_mod = "Registro"
  end

  def confirma
    @fila_puesto = FilaPuesto.new()
    @fila_puesto.fila_id = params[:fila_id]
    @fila_puesto.documento = params[:documento]
    @fila_puesto.save
  end

end
