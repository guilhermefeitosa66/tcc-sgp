class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.text :description
      t.date :end_date
      t.integer :status
      t.references :user_story, foreign_key: true

      t.timestamps
    end
  end
end
