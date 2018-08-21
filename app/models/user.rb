class User < ApplicationRecord
  scope :by_user_name, -> (name) { where('users.name ILIKE ?', "%#{name}%") }

  has_many :tasks
end