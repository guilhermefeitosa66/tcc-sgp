class AddProficiencyToUserLanguage < ActiveRecord::Migration[5.0]
  def change
    add_column :user_languages, :proficiency, :integer, default: 0
  end
end
