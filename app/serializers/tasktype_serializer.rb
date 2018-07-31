class TasktypeSerializer < ActiveModel::Serializer
  attributes :id, :name, :icon
  has_many :tasks
end