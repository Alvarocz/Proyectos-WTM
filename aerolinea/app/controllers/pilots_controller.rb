class PilotsController < ApplicationController
  before_action :set_pilot, only: [:show, :edit, :update, :destroy]

  def index
    @pilots = Pilot.all
  end

  def show
    @pilot = Pilot.find(params[:id])
  end

  def new
    @pilot = Pilot.new
  end

  def edit
    @pilot = Pilot.find(params[:id])
  end

  def create
    @pilot = Pilot.new(pilot_params)

    respond_to do |format|
      if @pilot.save
        format.html { redirect_to @pilot, notice: 'Pilot was successfully created.' }
        format.json { render :show, status: :created, location: @pilot }
      else
        format.html { render :new }
        format.json { render json: @pilot.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @pilot.update(pilot_params)
        format.html { redirect_to @pilot, notice: 'Pilot was successfully updated.' }
        format.json { render :show, status: :ok, location: @pilot }
      else
        format.html { render :edit }
        format.json { render json: @pilot.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @pilot.destroy
    respond_to do |format|
      format.html { redirect_to pilots_url, notice: 'Pilot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_pilot
      @pilot = Pilot.find(params[:id])
    end

    def pilot_params
      params.require(:pilot).permit(:name, :identification, :airplane_id)
    end
end
