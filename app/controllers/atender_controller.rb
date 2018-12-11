class AtenderController < ApplicationController
  before_action :pone_variables

  def index
  	$nom_mod = "Atender"
  end

  def siguiente
  	actualiza_atendido
  	@llamado = @fila_puestos.where("estado = 'Espera' and numero > #{$ult_num}").order(:numero).take
  	if @llamado.present?
  	  @llamado.puesto_id = @taquilla.id
  	  @llamado.estado = "Proceso"
  	  @llamado.hora_estado = Time.now
  	  @llamado.avisos ||= 0
  	  @llamado.avisos += 1
  	  @llamado.save
  	  $ult_num = @llamado.numero
  	else
  	  $ult_num = 0
  	end
  	render :index
  end

  def atendido
  	if @llamado.present?
  	  @llamado.estado = "Atendido"
  	  @llamado.hora_estado = Time.now
  	  @llamado.save
  	  @llamado = nil
   	  render :index
  	end
  end
  
  def cancelar
  	actualiza_atendido
    @llamado = nil
    render :index
  end

  private

	def pone_variables
	  $ult_num ||= 0
	  @taquilla = Puesto.find(1)
  	  @fila = Fila.find(1)
  	  @fila_puestos = @fila.fila_puestos.where(fecha: Date.today)
  	  @llamado = @fila_puestos.where(puesto: @taquilla.id, estado: "Proceso").take
	end
	
	def actualiza_atendido
	  	if @llamado.present?
	  		if @llamado.avisos == @fila.max_avisos
		  	  @llamado.estado = "Nulo"
	  	  	  @llamado.hora_estado = Time.now
		  	else
	    	  @llamado.puesto_id = nil
	  		  @llamado.estado = "Espera"
	  	      @llamado.hora_estado = Time.now
	  		end
	  		@llamado.save
	  	end
	end

end
