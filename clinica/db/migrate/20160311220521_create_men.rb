class CreateMen < ActiveRecord::Migration
  def change
    create_table :men do |t|
      t.string :name
      t.string :second_name
      t.string :last_name
      t.string :second_surname
      t.string :cc
      t.integer :years
      t.string :genre
      t.string :blood_type
      t.datetime :birthdate
      t.string :antecedents

      t.timestamps null: false
    end
  end
end
