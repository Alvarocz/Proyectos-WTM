class EditBoys < ActiveRecord::Migration
  def change
    remove_column :boys, :father_id
    remove_column :boys, :mather_id

    add_column :boys, :father_fullname, :string
    add_column :boys, :mather_fullname, :string
  end
end
