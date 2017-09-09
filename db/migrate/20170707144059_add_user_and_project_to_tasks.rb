class AddUserAndProjectToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :user_id, :integer
    add_column :tasks, :project_id, :integer, null: false
  end
end
