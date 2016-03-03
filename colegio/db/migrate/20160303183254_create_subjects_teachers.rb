class CreateSubjectsTeachers < ActiveRecord::Migration
  def change
    create_table :subjects_teachers do |t|
      t.integer "subject_id", index: true
      t.integer "teacher_id", index: true
    end
  end
end
