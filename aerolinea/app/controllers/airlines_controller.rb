class AirlinesController < ApplicationController
  before_action :set_airline, only: [:show, :edit, :update, :destroy]

  def index
    @airlines = Airline.all
  end

  def show
    @airline = Airline.find(params[:id])
  end

  def new
    @airline = Airline.new
  end

  def edit
    @airline = Airline.find(params[:id])
  end

  def create
    @airline = Airline.new(airline_params)

    respond_to do |format|
      if @airline.save
        format.html { redirect_to @airline, notice: 'Airline was successfully created.' }
        format.json { render :show, status: :created, location: @airline }
      else
        format.html { render :new }
        format.json { render json: @airline.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @airline.update(airline_params)
        format.html { redirect_to @airline, notice: 'Airline was successfully updated.' }
        format.json { render :show, status: :ok, location: @airline }
      else
        format.html { render :edit }
        format.json { render json: @airline.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @airline.destroy
    respond_to do |format|
      format.html { redirect_to airlines_url, notice: 'Airline was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_airline
      @airline = Airline.find(params[:id])
    end

    def airline_params
      params.require(:airline).permit(:name, { :airline_ids => [] })
    end
end
