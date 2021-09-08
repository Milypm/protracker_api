class User < ApplicationRecord
  has_secure_password
  has_many :projects, dependent: :destroy
  has_many :project_tasks, dependent: :destroy
  has_many :dev_tasks, dependent: :destroy
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :type
end
