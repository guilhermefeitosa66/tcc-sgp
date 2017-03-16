class CreateUserAbilities < ActiveRecord::Migration[5.0]
  def change
    create_table :user_abilities do |t|
      t.references :user, foreign_key: true
      t.references :ability, foreign_key: true

      t.timestamps
    end
  end
end
