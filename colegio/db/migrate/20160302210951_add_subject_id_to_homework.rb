class AddSubjectIdToHomework < ActiveRecord::Migration
  def change
    add_column :homeworks, :subject_id, :integer
  end
end
