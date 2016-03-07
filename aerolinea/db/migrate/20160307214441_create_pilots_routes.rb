class CreatePilotsRoutes < ActiveRecord::Migration
  def change
    create_table :pilots_routes do |t|
      t.integer "pilot_id", index: true
      t.integer "route_id", index: true
    end
  end
end
