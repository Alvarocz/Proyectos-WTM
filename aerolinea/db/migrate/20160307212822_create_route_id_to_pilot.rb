class CreateRouteIdToPilot < ActiveRecord::Migration
  def change
    add_column :pilots, :route_id, :integer
  end
end
