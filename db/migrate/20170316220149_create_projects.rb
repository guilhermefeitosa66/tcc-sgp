class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.integer :size
      t.date :start_date
      t.date :end_date
      t.references :local, foreign_key: true

      t.timestamps
    end
  end
end
