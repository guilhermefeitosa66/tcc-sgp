class CreateUserStories < ActiveRecord::Migration[5.0]
  def change
    create_table :user_stories do |t|
      t.text :description
      t.integer :business_value
      t.integer :status
      t.integer :story_points
      t.references :theme, foreign_key: true

      t.timestamps
    end
  end
end
