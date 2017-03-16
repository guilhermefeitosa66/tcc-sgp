class FunctionUserProject < ApplicationRecord
  belongs_to :project
  belongs_to :function
  belongs_to :user
end
