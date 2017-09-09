class RemoveUserFromTasks < ActiveRecord::Migration[5.1]
  def up
    remove_column :tasks, :user_id
  end

  def down
    add_column :tasks, :user_id, :integer
  end
end
