class CreateProfesores < ActiveRecord::Migration
  def change
    create_table :profesores do |t|
      t.string :nombre
      t.string :apellido
      t.string :identificacion
      t.string :asignatura
      t.string :email

      t.timestamps
    end
  end
end
