class Task < ApplicationRecord
  scope :by_tasktype_id, -> (tasktype_id) { where(tasktype_id: tasktype_id) }
  belongs_to :user
  belongs_to :tasktype
end