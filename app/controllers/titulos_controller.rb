class TitulosController < ApplicationController
  before_action :set_titulo, only: [:show, :update, :destroy]

  # GET /titulos
  def index
    @titulos = Titulo.all

    render json: @titulos
  end

  # GET /titulos/1
  def show
    render json: @titulo
  end

  # POST /titulos
  def create
    @titulo = Titulo.new(titulo_params)

    if @titulo.save
      render json: @titulo, status: :created, location: @titulo
    else
      render json: @titulo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /titulos/1
  def update
    if @titulo.update(titulo_params)
      render json: @titulo
    else
      render json: @titulo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /titulos/1
  def destroy
    @titulo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_titulo
      @titulo = Titulo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def titulo_params
      params.permit(:diploma, :resolucion, :fecha_grado)
    end
end
