class TripsController < ApplicationController
  def index
    @trips = Trip.all
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.save
    redirect_to trips_path
  end

  def edit
    @trip = Trip.find(paras[:id])
  end

  def update
    @trip = Trip.find(paras[:id])
    @trip.update(trip_params)
    redirect_to trips_path
  end

  def trip_params
    params.require(:trip).permit(:airline_id, :route_id, :depart_time, :arrival_time)
  end
end
