class CreateTareas < ActiveRecord::Migration
  def change
    create_table :tareas do |t|
      t.string :enunciado
      t.string :fecha_final

      t.timestamps
    end
  end
end
