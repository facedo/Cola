class FilaPuestosController < ApplicationController
  before_action :set_fila_puesto, only: [:show, :edit, :update, :destroy]

  # GET /fila_puestos
  # GET /fila_puestos.json
  def index
    @fila_puestos = FilaPuesto.all
    $nom_mod = "Personas en Cola"
  end

  # GET /fila_puestos/1
  # GET /fila_puestos/1.json
  def show
  end

  # GET /fila_puestos/new
  def new
    @fila_puesto = FilaPuesto.new
  end

  # GET /fila_puestos/1/edit
  def edit
  end

  # POST /fila_puestos
  # POST /fila_puestos.json
  def create
    @fila_puesto = FilaPuesto.new(fila_puesto_params)

    respond_to do |format|
      if @fila_puesto.save
        format.html { redirect_to @fila_puesto, notice: 'Fila puesto was successfully created.' }
        format.json { render :show, status: :created, location: @fila_puesto }
      else
        format.html { render :new }
        format.json { render json: @fila_puesto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fila_puestos/1
  # PATCH/PUT /fila_puestos/1.json
  def update
    respond_to do |format|
      if @fila_puesto.update(fila_puesto_params)
        format.html { redirect_to @fila_puesto, notice: 'Fila puesto was successfully updated.' }
        format.json { render :show, status: :ok, location: @fila_puesto }
      else
        format.html { render :edit }
        format.json { render json: @fila_puesto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fila_puestos/1
  # DELETE /fila_puestos/1.json
  def destroy
    @fila_puesto.destroy
    respond_to do |format|
      format.html { redirect_to fila_puestos_url, notice: 'Fila puesto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fila_puesto
      @fila_puesto = FilaPuesto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fila_puesto_params
      params.require(:fila_puesto).permit(:fecha, :hora, :numero, :documento, :estado, :hora_estado, :avisos, :fila_id, :puesto_id)
    end
end
