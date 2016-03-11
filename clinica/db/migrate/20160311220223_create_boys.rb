class CreateBoys < ActiveRecord::Migration
  def change
    create_table :boys do |t|
      t.string :name
      t.string :second_name
      t.string :last_name
      t.string :second_surname
      t.string :ti
      t.integer :years
      t.string :genre
      t.string :blood_type
      t.integer :father_id
      t.integer :mother_id
      t.string :vaccines
      t.datetime :birthdate
      t.string :antecedents

      t.timestamps null: false
    end
  end
end
