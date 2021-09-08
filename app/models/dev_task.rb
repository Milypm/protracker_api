class DevTask < ApplicationRecord
  belongs_to :user
  belongs_to :project_task
  validates_presence_of :time
end
