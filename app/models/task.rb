class Task < ActiveRecord::Base
  belongs_to :project
  has_one :user

  validates :name, presence: true
  validates :project_id, presence: true
end
