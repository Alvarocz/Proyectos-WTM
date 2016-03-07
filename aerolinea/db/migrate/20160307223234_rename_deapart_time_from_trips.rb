class RenameDeapartTimeFromTrips < ActiveRecord::Migration
  def change
    rename_column :trips, :deapart_time, :depart_time
  end
end
