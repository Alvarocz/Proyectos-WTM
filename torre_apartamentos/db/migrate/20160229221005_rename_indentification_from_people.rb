class RemoveIndentificationFromPeople < ActiveRecord::Migration
  def change
    rename_column :people, :indentification, :identification
  end
end
