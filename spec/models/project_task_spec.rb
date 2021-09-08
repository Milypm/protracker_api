require 'rails_helper'

RSpec.describe ProjectTask, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:project) }
  it { should have_one(:dev_task).dependent(:destroy) }
  it { should validate_presence_of(:task) }
  it { should validate_presence_of(:assigned_to) }
end
