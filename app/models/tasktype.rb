class Tasktype < ApplicationRecord
  scope :by_tasktype_name, -> (name) { where('tasktypes.name ILIKE ?', "%#{name}%") }
  
  has_many :tasks
end