class CreateTowers < ActiveRecord::Migration
  def change
    create_table :towers do |t|
      t.string :name
      t.string :porter

      t.timestamps
    end
  end
end
