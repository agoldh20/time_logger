class ChangeNameOfSpintColumnInTimeLog < ActiveRecord::Migration[6.0]
  def change
    rename_column :time_logs, :sprint, :sprint_number
  end
end
