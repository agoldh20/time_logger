class AddSprintColumnsToTimeLog < ActiveRecord::Migration[6.0]
  def change
    add_column :time_logs, :sprint_id, :integer
    add_column :time_logs, :sprint, :string
  end
end
