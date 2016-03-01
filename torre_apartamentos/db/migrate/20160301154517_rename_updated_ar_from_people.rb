class RenameUpdatedArFromPeople < ActiveRecord::Migration
  def change
  	rename_column :people, :updated_ar, :updated_at
  end
end
