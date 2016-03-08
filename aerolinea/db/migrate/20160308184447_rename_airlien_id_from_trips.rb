class RenameAirlienIdFromTrips < ActiveRecord::Migration
  def change
    rename_column :trips, :airlien_id, :airline_id
  end
end
