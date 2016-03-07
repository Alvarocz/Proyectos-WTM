class CreatePilotIdToAirplane < ActiveRecord::Migration
  def change
    add_column :airplanes, :pilot_id, :integer
  end
end
