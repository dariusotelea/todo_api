class RenameColumnInTask < ActiveRecord::Migration[5.2]
  def change
    rename_column :tasks, :takstype_id, :tasktype_id
  end
end
