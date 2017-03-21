class Ability < ApplicationRecord

  
  # Relacionamentos
  belongs_to :project, foreign_key: "scope",class_name: 'Project'
end
