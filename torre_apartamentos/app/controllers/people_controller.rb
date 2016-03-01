class PeopleController < ApplicationController 
  def index
    @people = Person.all
  end

  def create
    @person = Person.new(person_params)
    @person.save
    redirect_to people_path
  end

  def edit
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end

  def show
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])
    @person.update
    redirect_to people_path
  end

  def person_params
    params.require(:person).permit(:name, :identification, :apartment_id)
  end
end