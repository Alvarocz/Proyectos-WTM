class TranslateToEnglish < ActiveRecord::Migration
  def change
    rename_column :asignaturas, :nombre, :name 
    rename_column :asignaturas, :codigo, :code

    rename_column :tareas, :enunciado, :statement 
    rename_column :tareas, :fecha_final, :final_date

    rename_column :respuestas, :mensaje, :statement 
    rename_column :respuestas, :calificacion, :score

    rename_column :estudiantes, :nombre, :name
    rename_column :estudiantes, :apellido, :last_name
    rename_column :estudiantes, :identificacion, :identification

    rename_column :profesores, :nombre, :name
    rename_column :profesores, :apellido, :last_name
    rename_column :profesores, :identificacion, :identification
    rename_column :profesores, :asignatura, :subject

    rename_table :asignaturas, :subject
    rename_table :profesores, :teachers
    rename_table :estudiantes, :students
    rename_table :tareas, :homeworks
    rename_table :respuestas, :answers
  end
end
