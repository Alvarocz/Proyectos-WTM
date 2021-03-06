class ApartmentsController < ApplicationController
  def index
    @apartments = Apartment.all
  end

  def destroy
    @apartment = Apartment.find(params[:id])
    @apartment.destroy
    redirect_to apartments_path
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
    @persons = []
    for person in People.all
      if person.apartment_id == params[:id]
        @persons.push(person)
      end
    end
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