class CreateTimeLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :time_logs do |t|
      t.string :ticket
      t.string :action
      t.string :start_time
      t.string :end_time
      t.text :notes

      t.timestamps
    end
  end
end
