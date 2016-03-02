class AddTeacherIdToHomwework < ActiveRecord::Migration
  def change
    add_column :homeworks, :teacher_id, :integer
  end
end
