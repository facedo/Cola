class RegistroController < ApplicationController
 
  before_action :set_fila_puesto, only: :show
 
  def index
    @filas = Fila.all
    $nom_mod = "Registro"
  end
 
  def show
  end
 
  def new
    @fila_puesto = FilaPuesto.new
  end

  def registrar
    @fila_puesto = FilaPuesto.new()
    @fila_puesto.fila_id = registar_params[:fila_id]
    @fila_puesto.documento = registrar_params[:documento]
    @fila_puesto.save
  end

  def create
    @fila_puesto = FilaPuesto.new(registro_params)
    respond_to do |format|
      if @fila_puesto.save
        format.html { render :show }
        #format.html { redirect_to show_registro_path(@fila_puesto), notice: 'Registrado en la cola.' }
        format.json { render :show, status: :created, location: @fila_puesto }
      else
        format.html { render :new }
        format.json { render json: @fila_puesto.errors, status: :unprocessable_entity }
      end
    end
  end
  private
    def set_fila_puesto
      @fila_puesto = FilaPuesto.find(params[:id])
    end
    def registro_params
      params.require(:fila_puesto).permit(:fecha, :hora, :numero, :documento, :estado, :hora_estado, :avisos, :fila_id, :puesto_id)
    end
end
