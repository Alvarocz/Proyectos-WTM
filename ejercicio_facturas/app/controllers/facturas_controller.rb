class FacturasController < ApplicationController
  before_action :set_factura, only: [:show, :edit, :update, :destroy]

  def index
    @facturas = Factura.all
  end

  def show
  end

  def new
    @factura = Factura.new
  end

  def edit
  end

  def create
    @factura = Factura.new(factura_params)
    @factura.save
    redirect_to facturas_path
  end

  def update
    @factura = Factura.find(params[:id])
    @factura.update(factura_params)
    redirect_to facturas_path
  end

  def destroy
    @factura.destroy
    @factura.destroy
  end

  private
    def set_factura
      @factura = Factura.find(params[:id])
    end

    def factura_params
      params.require(:factura).permit(:nombre, :numero, :fecha, :nombre_emisor, :identificacion_emisor, :nombre_receptor, :identificacion_receptor, :valor_total)
    end
end
