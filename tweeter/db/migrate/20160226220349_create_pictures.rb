class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :photo
      t.integer :user_id

      t.timestamps
    end
  end
end
