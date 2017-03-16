class CreateAbilities < ActiveRecord::Migration[5.0]
  def change
    create_table :abilities do |t|
      t.string :name
      t.text :description
      t.integer :scope

      t.timestamps
    end
  end
end
