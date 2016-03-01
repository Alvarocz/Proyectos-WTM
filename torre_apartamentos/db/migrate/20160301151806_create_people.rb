class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
    	t.string   "name"
    	t.string   "identification"
    	t.integer  "apartment_id"
    	t.datetime "created_at"
    	t.datetime "updated_ar"
    end
  end
end
