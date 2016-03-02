class CreateRespuestas < ActiveRecord::Migration
  def change
    create_table :respuestas do |t|
      t.string :mensaje
      t.float :calificacion

      t.timestamps
    end
  end
end
