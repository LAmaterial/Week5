class CreateUserProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :userprojects do |t|
      t.belongs_to :user, null: false
      t.belongs_to :project, null: false
      t.timestamps null: false
    end
  end
end
