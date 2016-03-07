class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.integer :airlien_id
      t.integer :route_id
      t.integer :pilot_id
      t.datetime :deapart_time
      t.datetime :arrival_time

      t.timestamps
    end
  end
end
