class CreateEstudiantes < ActiveRecord::Migration
  def change
    create_table :estudiantes do |t|
      t.string :nombre
      t.string :apellido
      t.string :identificacion
      t.string :email

      t.timestamps
    end
  end
end
