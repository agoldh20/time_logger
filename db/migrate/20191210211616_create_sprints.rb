class CreateSprints < ActiveRecord::Migration[6.0]
  def change
    create_table :sprints do |t|
      t.string :sprint
      t.boolean :current

      t.timestamps
    end
  end
end
