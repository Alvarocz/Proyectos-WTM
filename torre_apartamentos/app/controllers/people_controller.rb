class PeopleController < ApplicationController 
  def index
    @people = People.all
  end

  def create
    @people = People.new(people_params)
    @people.save
    redirect_to people_path
  end

  def new
    @people = People.new
  end

  def show
    @people = People.find(params[:id])
  end

  def people_params
    params.require(:people).permit(:name, :identification, :apartment_id)
  end
end