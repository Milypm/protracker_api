class ProjectTask < ApplicationRecord
  belongs_to :project
  belongs_to :user
  has_one :dev_task, dependent: :destroy
  validates_presence_of :task
  validates_presence_of :assigned_to
end
