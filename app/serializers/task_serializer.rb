class TaskSerializer < ActiveModel::Serializer
  attributes :id, :name, :status, :priority 
  belongs_to :user
  belongs_to :tasktype
end
