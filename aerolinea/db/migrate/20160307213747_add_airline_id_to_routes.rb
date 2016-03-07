class AddAirlineIdToRoutes < ActiveRecord::Migration
  def change
    add_column :routes, :airline_id, :integer
  end
end
