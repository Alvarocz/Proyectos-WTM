class DeleteTeacherIdFromSubjects < ActiveRecord::Migration
  def change
    remove_column :subjects, :teacher_id
  end
end
