class AddHomeworkToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :homework_id, :integer
  end
end
