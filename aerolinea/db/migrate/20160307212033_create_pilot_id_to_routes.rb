class CreatePilotIdToRoutes < ActiveRecord::Migration
  def change
    add_column :routes, :pilot_id, :integer
  end
end
