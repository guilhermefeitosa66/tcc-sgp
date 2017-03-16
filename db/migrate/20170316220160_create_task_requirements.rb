class CreateTaskRequirements < ActiveRecord::Migration[5.0]
  def change
    create_table :task_requirements do |t|
      t.references :task, foreign_key: true
      t.references :ability, foreign_key: true
      t.integer :level

      t.timestamps
    end
  end
end
