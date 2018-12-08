class PuestosController < ApplicationController
  before_action :set_puesto, only: [:show, :edit, :update, :destroy]

  # GET /puestos
  # GET /puestos.json
  def index
    @puestos = Puesto.all
    $nom_mod = "Puestos"
  end

  # GET /puestos/1
  # GET /puestos/1.json
  def show
    @nbsig = "#{@puesto.fila.nombre}(#{@puesto.fila.siglas})"
  end

  # GET /puestos/new
  def new
    @puesto = Puesto.new
  end

  # GET /puestos/1/edit
  def edit
  end

  # POST /puestos
  # POST /puestos.json
  def create
    @puesto = Puesto.new(puesto_params)

    respond_to do |format|
      if @puesto.save
        format.html { redirect_to @puesto, notice: 'Puesto was successfully created.' }
        format.json { render :show, status: :created, location: @puesto }
      else
        format.html { render :new }
        format.json { render json: @puesto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /puestos/1
  # PATCH/PUT /puestos/1.json
  def update
    respond_to do |format|
      if @puesto.update(puesto_params)
        format.html { redirect_to @puesto, notice: 'Puesto was successfully updated.' }
        format.json { render :show, status: :ok, location: @puesto }
      else
        format.html { render :edit }
        format.json { render json: @puesto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /puestos/1
  # DELETE /puestos/1.json
  def destroy
    @puesto.destroy
    respond_to do |format|
      format.html { redirect_to puestos_url, notice: 'Puesto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_puesto
      @puesto = Puesto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def puesto_params
      params.require(:puesto).permit(:nombre, :rotulo, :fila_id)
    end
end
