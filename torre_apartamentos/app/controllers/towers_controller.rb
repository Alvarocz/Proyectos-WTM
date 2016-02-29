class TowersController < ApplicationController
  def index
    @towers = Tower.all
  end

  def new
    @tower = Tower.new
  end

  def create
    @tower = Tower.new(tower_params)
    @tower.save
    redirect_to towers_path
  end

  def show
    @tower = Tower.find(params[:id])
  end

  def tower_params
    params.require(:tower).permit(:name, :porter)
  end
end