class UpdateTeacher < ActiveRecord::Migration
  def change
    change_column :teachers, :subject, :integer
    rename_column :teachers, :subject, :subject_id
  end
end
