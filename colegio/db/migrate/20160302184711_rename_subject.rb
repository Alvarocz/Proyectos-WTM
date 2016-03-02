class RenameSubject < ActiveRecord::Migration
  def change
    rename_table :subject, :subjects
  end
end
