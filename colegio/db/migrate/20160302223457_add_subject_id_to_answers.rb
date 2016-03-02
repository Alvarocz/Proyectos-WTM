class AddSubjectIdToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :subject_id, :integer
  end
end
