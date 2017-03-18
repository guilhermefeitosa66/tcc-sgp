class Project < ApplicationRecord

  def percentage_completed
    # Calculo ainda será implmentado
    rand(1...100)
  end

  # Relacionamentos
  has_many :function_user_projects
  has_many :users, through: :function_user_projects
  has_many :functions, through: :function_user_projects
  belongs_to :local
end
