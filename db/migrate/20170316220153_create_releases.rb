class CreateReleases < ActiveRecord::Migration[5.0]
  def change
    create_table :releases do |t|
      t.string :version
      t.date :deliver_date
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
