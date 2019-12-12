class ChangeNameOfActionColumnInTimeLog < ActiveRecord::Migration[6.0]
  def change
    rename_column :time_logs, :action, :my_action
  end
end
