class AddCurrentlyActiveTaskColumnToTimeLog < ActiveRecord::Migration[6.0]
  def change
    add_column :time_logs, :currently_active_task, :boolean
  end
end
