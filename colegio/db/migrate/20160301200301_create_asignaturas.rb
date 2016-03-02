class CreateAsignaturas < ActiveRecord::Migration
  def change
    create_table :asignaturas do |t|
      t.string :nombre
      t.integer :codigo

      t.timestamps
    end
  end
end
