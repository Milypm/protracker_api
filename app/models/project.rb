class Project < ApplicationRecord
  belongs_to :user
  has_many :project_tasks, dependent: :destroy
  validates_presence_of :name
  validates_presence_of :deadline
  validates_presence_of :status
end
