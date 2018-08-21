class Task < ApplicationRecord
  # scope :by_tasktype_name, -> (tasktype_name) { where(tasktype_name: tasktype_name) }
  # scope :by_user_name, -> (user_name) { where(user_name: user_name) }

  scope :by_task_status, -> (task_status) { where(task_status: task_status) }
  scope :by_task_name, -> (name) { where('tasks.name ILIKE ?', "%#{name}%") }
  scope :by_task_priority, -> (name) { where(task_priority: task_priority) }  
 

  belongs_to :user
  belongs_to :tasktype
end