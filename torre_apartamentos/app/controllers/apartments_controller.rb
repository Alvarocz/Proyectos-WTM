class ApartmentsController < ApplicationController
  def index
    @apartments = Apartment.all
  end

  def edit
    @apartment = Apartment.find(params[:id])
  end

  def create
    @apartment = Apartment.new(apartment_params)
    @apartment.save
    redirect_to apartments_path
  end

  def new
    @apartment = Apartment.new
  end

  def show
    @apartment = Apartment.find(params[:id])
  end

  def update
    @apartment = Apartment.find(params[:id])
    @apartment.update(apartment_params)
    redirect_to apartments_path
  end

  def apartment_params
    params.require(:apartment).permit(:name, :tower_id, :floor)
  end
end