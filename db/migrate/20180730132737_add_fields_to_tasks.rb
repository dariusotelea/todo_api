class AddFieldsToTasks < ActiveRecord::Migration[5.2]
  def change
    add_reference :tasks, :user
    add_reference :tasks, :takstype
  end
end
