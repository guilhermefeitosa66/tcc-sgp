class CreateSprints < ActiveRecord::Migration[5.0]
  def change
    create_table :sprints do |t|
      t.references :project, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.date :planning_start_date
      t.date :planning_end_date
      t.date :execution_start_date
      t.date :execution_end_date
      t.date :review_meeting_date
      t.date :retrospective_meeting_date
      t.references :release, foreign_key: true

      t.timestamps
    end
  end
end
