class AddAirplaneIdToPilots < ActiveRecord::Migration
  def change
    add_column :pilots, :airplane_id, :integer
  end
end
