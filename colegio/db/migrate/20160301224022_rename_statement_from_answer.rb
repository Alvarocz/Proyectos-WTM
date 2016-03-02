class RenameStatementFromAnswer < ActiveRecord::Migration
  def change
    rename_column :answers, :statement, :message
  end
end
